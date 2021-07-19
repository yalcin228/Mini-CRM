@extends('backend.layouts.app')

@section('title')
Şirkət Məlumatlarının Səhfəsi
@endsection

@section('css')


@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">{{__("language.companyedith3")}}</h3>

    
    </div>
    <div class="card-body">
        @if ($errors->any())
            <div class="alert alert-danger" id="errorMessage">
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </div>
        @endif

      <form action="{{route('company.update',$edit->id)}}" method="post" enctype="multipart/form-data">
        @method('PUT')
          @csrf
            <div class="mb-3">
                <label for="name">{{__("language.companyeditname")}}</label>
                <input type="text" class="form-control" id="name" name="name" value="{{$edit->name}}" >
            </div>
            <div class="mb-3">
                <label for="email">{{__("language.companyeditemail")}}</label>
                <input type="email" class="form-control" id="email" name="email" value="{{$edit->email}}" >
            </div>
            <div class="mb-3">
                <label for="">{{__("language.companyeditfile")}}</label><br>
                <img style="height: 100px;width:100px;" src="{{asset('storage/images')}}/{{$edit->logo}}" alt="">
            </div>
            <div class="custom-file mb-3">
                <input type="file" name="image" class="custom-file-input" id="customFile">
                <label class="custom-file-label" for="customFile">{{__("language.companyeditfileph")}}</label>
            </div>
            <div class="mb-3">
                <label for="website">{{__("language.companyeditwebsite")}}</label>
                <input type="text" class="form-control" id="website" name="website" value="{{$edit->website}}" >
            </div>

            <button type="submit" class="btn btn-primary">{{__("language.companyeditbtn")}}</button>
      </form>
      
    </div>
    
  </div>
    
@endsection

@section('js')
<script>
    setInterval(() => {
        $('#errorMessage').fadeOut();
    }, 2000);
</script>

@endsection