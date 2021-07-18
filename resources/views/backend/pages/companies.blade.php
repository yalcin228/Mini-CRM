@extends('backend.layouts.app')

@section('title')
    Sirketler
@endsection

@section('css')
<link rel="stylesheet" href="{{asset('backend/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">

@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">Sirketler Siyahı</h3>

      <div class="card-tools">
        <a href="{{route('company.create')}}" class="btn btn-success"><i class="fas fa-plus"></i> Şirkət əlavə et</a>
        
      </div>
    </div>
    <div class="card-body">

        <table id="dataTable_1" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Şirkət Adı</th>
                    <th>Email</th>
                    <th>Logo</th>
                    <th>WebSite </th>
                    <th>İşləmlər</th>
                </tr>
            </thead>
         
            <tbody>
                @foreach ($companie as $item)

                <tr id="delete{{$item->id}}">
                    <td>{{$item->id}}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->email}}</td>
                    <td><img style="height: 100px;width:100px;" src="{{asset('storage/images')}}/{{$item->logo}}" alt=""></td>
                    <td>{{$item->website}}</td>
                    <td width="150px">
                        <a href="{{route('company.edit',$item->id)}}" class="btn btn-primary"><i class="fas fa-edit"></i> Yenilə</a>
                        
                        <button class="btn btn-danger" onclick="deleteCompany({{$item->id}})"><i class="fas fa-trash"></i> Sil</button>
                        
                      </td>
                </tr>
                @endforeach
            </tbody>
           
          </table>
      
    </div>
    
  </div>
    
@endsection

@section('js')
<script src="{{asset('backend/plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{asset('backend/plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>    

<script>
    
    $(function () {
      $("#dataTable_1").DataTable({
        "language": {
            "emptyTable": "Göstəriləcək veri yoxdur.",
            "processing": "Veriler yüklənir...",
            "sDecimal": ".",
            "sInfo": "_TOTAL_ veridən _START_ - _END_ arasındaki verilər göstərilir",
            "sInfoFiltered": "(_MAX_ kayıt içerisinden bulunan)",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "Səhifədə _MENU_ kayıt göstər",
            "sLoadingRecords": "Yükləniyor...",
            "sSearch": "Axtar:",
            "sZeroRecords": "Uyğun nəticə tapılmadı",
            "oPaginate": {
                "sFirst": "İlk",
                "sLast": "Son",
                "sNext":     "Sonra",
                "sPrevious": "Əvvəl"
               
            },
            "oAria": {
                "sSortAscending": ": artan sütun sıralamasını aktifleştir",
                "sSortDescending": ": azalan sütun sıralamasını aktifleştir"
            },
            "select": {
                "rows": {
                    "_": "%d kayıt seçildi",
                    "0": "",
                    "1": "1 kayıt seçildi"
                }
            }
        }
      });
        
    });
  </script>

@if (session('store'))
<script>
  toastr.success("{!! session('store')  !!}");
  
</script>
@endif

@if (session('updated'))
<script>
  toastr.success("{!! session('updated')  !!}");
  
</script>
@endif

<script>
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr("content")
    }
  });
</script>

<script>
  function deleteCompany(id){
   if(confirm("Silmek istediyinize eminsiniz?")){
     $.ajax({
        type: "POST",
        url: "{{route('company.deleted')}}",
        data: {delete_id:id},
        success:function(response){
                $("#delete"+id).hide(1000);
        }
     })
   }
 }
</script>
@endsection