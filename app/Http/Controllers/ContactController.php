<?php

namespace App\Http\Controllers;
use App\Http\Requests\ContactRequest;
use Illuminate\Http\Request;
use Symfony\Component\Console\Input\Input;

class ContactController extends Controller
{
    
    public function create()
    { return view('login'); }
   
    //  *********************ContactRequest
    // public function store(ContactRequest $request)
    // {
    //     return view('confirmation');
    // }

//  ********************* Request
    public function store(Request $request)
    {

        $this->validate($request, [
            'nom' => 'required|alpha|between:5,20',
            'email' => 'bail|required|email',
            'message' => 'bail|required|max:250',
            'image' => 'required'
        ]);
        return view('confirmation');
     
        }
    // public function message(){
    //     return[
    //        'nom.required' => 'tkhrbi9a'
    //     ];
    // }
// ********************************
    // public function store(Request $request)
    // {
    // $request->validate([
    //      'nom' => 'required|alpha|between:5,20',
    //     'email' => 'bail|required|email',
    //     'message' => 'bail|required|max:250'
    //     ]);
    
    //     // The blog post is valid...
    // }
// *******************unique,bail
    //     public function store(Request $request) {

    //     $validatedData = $request->validate([
    //     'title' => ['required', 'unique:posts', 'max:255'],
    //     'body' => ['required'],
    // ]);

    // public function store(Request $request) {
    // $request->validateWithBag('blog', [
    //     'nom' => ['required', 'unique:posts', 'max:255'],
    //     'email' => ['required','email'],
    //     'message' => ['bail', 'required','max:250']
    // ]);


    // ***************
    
    // $imagePath = request('image')->store('uploads', 'public');

    // $image = InterventionImage::make(public_path("/storage/{$imagePath}"))->fit(1200, 1200);
    //   $image->save();


//     if(Input::hasFile('image')){
//         $image =Input::file('image');
//         $image->move('uploads',$image->getClientOriginalName());
//     }
// return view('confirmation',$image->getClientOriginalName());
}

