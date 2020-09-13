<form class="p-1" action="{{route('products.search')}}">
<input type="text" class="h-100" name="q" value="{{old('q')}}">
<button type="submit" class=" py-1 btn btn-info"> <i  aria-hidden="true" class=" fa fa-search"></i> </button>

</form>