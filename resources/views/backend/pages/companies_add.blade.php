@extends('backend.layouts.app')

@section('title')
Şirkətlər Əlavə Etmə Səhfəsi
@endsection

@section('css')


@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">Şirkətlər Əlavə Etmə Formu</h3>

    
    </div>
    <div class="card-body">
        @if ($errors->any())
            <div class="alert alert-danger" id="errorMessage">
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </div>
        @endif

      <form action="{{route('company.store')}}" method="post" enctype="multipart/form-data">
          @csrf
            <div class="mb-3">
                <label for="name">Şirkət Adı</label>
                <input type="text" class="form-control" id="name" name="name" value="{{old('name')}}" placeholder="Şirkət adı daxil edin...">
            </div>
            <div class="mb-3">
                <label for="email">Şirkətin Email addresi</label>
                <input type="email" class="form-control" id="email" name="email" value="{{old('email')}}" placeholder="Şirkətin Email adresini daxil edin...">
            </div>
            <div class="custom-file mb-3">
                <input type="file" name="image" class="custom-file-input" id="customFile">
                <label class="custom-file-label" for="customFile">File seçin</label>
            </div>
            <div class="mb-3">
                <label for="website">Şirkətin Website addresi</label>
                <input type="text" class="form-control" id="website" name="website" value="{{old('website')}}" placeholder="Şirkətin Website adresini daxil edin...">
            </div>

            <button type="submit" class="btn btn-success">Əlavə Et</button>
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