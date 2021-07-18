@extends('backend.layouts.app')

@section('title')
İşçi Məlumatlarının Yenilənməsi
@endsection

@section('css')


@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">İşçi Məlumatlarının Yenilənməsi Formu</h3>

    
    </div>
    <div class="card-body">
        @if ($errors->any())
            <div class="alert alert-danger" id="errorMessage">
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </div>
        @endif

      <form action="{{route('employee.update',$edit->id)}}" method="post" >
        @method('PUT')
          @csrf
            <div class="mb-3">
                <label for="first_name">İşçi Adı</label>
                <input type="text" class="form-control" id="first_name" name="first_name" value="{{$edit->first_name}}" placeholder="İşçinin Adını daxil edin...">
            </div>
            <div class="mb-3">
                <label for="last_name">İşçi Soyadı</label>
                <input type="text" class="form-control" id="last_name" name="last_name" value="{{$edit->last_name}}" placeholder="İşçinin Soyadını daxil edin...">
            </div>
            <div class="mb-3">
                <label for="">Şirkət Adları</label>
                <select name="companie" class="form-control" value="fdsfsd"  id="">
                    <option value="">Seçim edin</option>
                    @foreach ($companie as $company)
                        <option @if ($edit->companies_id == $company->id)
                            selected
                        @endif  value="{{$company->id}}">{{$company->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="email">İşçi Email addresi</label>
                <input type="email" class="form-control" id="email" name="email" value="{{$edit->email}}" placeholder="İşçinin Email adresini daxil edin...">
            </div>
            <div class="mb-3">
                <label for="phone">İşçinin Əlaqə Nömrəsi</label>
                <input type="text" class="form-control" id="phone" name="phone" value="{{$edit->phone}}" placeholder="İşçinin əlaqə nömrəsini daxil edin...">
                <small><b>Nümunə: </b>0703107166</small>
            </div>

            <button type="submit" class="btn btn-primary">Yenilə</button>
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