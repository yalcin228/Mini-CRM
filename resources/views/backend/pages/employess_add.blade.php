@extends('backend.layouts.app')

@section('title')
İşçilər Əlavə Etmə Səhfəsi
@endsection

@section('css')


@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">{{__("language.employeeaddh3")}}</h3>

    
    </div>
    <div class="card-body">
        @if ($errors->any())
            <div class="alert alert-danger" id="errorMessage">
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </div>
        @endif

      <form action="{{route('employee.store')}}" method="post" >
          @csrf
            <div class="mb-3">
                <label for="first_name">{{__("language.employeeaddfname")}}</label>
                <input type="text" class="form-control" id="first_name" name="first_name" value="{{old('first_name')}}" placeholder="{{__("language.employeeaddfnameph")}}">
            </div>
            <div class="mb-3">
                <label for="last_name">{{__("language.employeeaddlname")}}</label>
                <input type="text" class="form-control" id="last_name" name="last_name" value="{{old('last_name')}}" placeholder="{{__("language.employeeaddlnameph")}}">
            </div>
            <div class="mb-3">
                <label for="">{{__("language.employeeaddcname")}}</label>
                <select name="companie" class="form-control" id="">
                    <option value="">{{__("language.employeeaddcnameph")}}</option>
                    @foreach ($companie as $company)
                        <option  value="{{$company->id}}">{{$company->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="email">{{__("language.employeeaddemail")}}</label>
                <input type="email" class="form-control" id="email" name="email" value="{{old('email')}}" placeholder="{{__("language.employeeaddemailph")}}">
            </div>
            <div class="mb-3">
                <label for="phone">{{__("language.employeeaddphone")}}</label>
                <input type="text" class="form-control" id="phone" name="phone" value="{{old('phone')}}" placeholder="{{__("language.employeeaddphoneph")}}">
                <small><b>{{__("language.employeeaddphonesm")}} </b>0703107166</small>
            </div>

            <button type="submit" class="btn btn-success">{{__("language.employeeaddbtn")}}</button>
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