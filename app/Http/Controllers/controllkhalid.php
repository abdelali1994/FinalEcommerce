public function store(Request $request)
{

$data = $request->json()->all();

$order = new Order();

$order->payment_intent_id = $data['paymentIntent']['id'];
$order->amount = $data['paymentIntent']['amount'];

$order->payment_created_at = (new DateTime())
->setTimestamp($data['paymentIntent']['created'])
->format('Y-m-d H:i:s');

$products = [];
$i = 0;

foreach (Cart::content() as $product) {
$products['product' . $i][] = $product->model->title;
$products['product' . $i][] = $product->model->price;
$products['product' . $i][] = $product->qty;
$i++;
}

$order->products = serialize($products);
$order->user_id = Auth()->user()->id;
$order->save();

if($data['paymentIntent']['status'] == 'succeeded'){
Cart::destroy();
Session::flash('success', 'Your command is successfuly done');
return response()->json(['success' => 'Payment Intent Succeeded']);
} else {
return response()->json(['error' => 'Payment Intent Not Succeeded']);
}

}