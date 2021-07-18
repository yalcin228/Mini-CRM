@extends('backend.layouts.app')

@section('title')
    İşçilər
@endsection

@section('css')
<link rel="stylesheet" href="{{asset('backend/plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">

@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">İşçilərin Siyahısı</h3>

      <div class="card-tools">
        <a href="{{route('employee.create')}}" class="btn btn-success"><i class="fas fa-plus"></i> İşçi əlavə et</a>
        
      </div>
    </div>
    <div class="card-body">

        <table id="dataTable_1" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Adı</th>
                    <th>Soyad</th>
                    <th>İşlədiyi Şirkət</th>
                    <th>Email</th>
                    <th>Nömrə</th>
                    <th>İşləmlər</th>
                </tr>
            </thead>
         
            <tbody>
                @foreach ($employee as $item)

                <tr id="delete{{$item->id}}">
                    <td>{{$item->id}}</td>
                    <td>{{$item->first_name}}</td>
                    <td>{{$item->last_name}}</td>
                    <td>{{$item->getCompanie->name}}</td>
                    <td>{{$item->email}}</td>
                    <td>{{$item->phone}}</td>
                    <td width="150px">
                        <a href="{{route('employee.edit',$item->id)}}" class="btn btn-primary"><i class="fas fa-edit"></i> Yenilə</a>
                        
                        <button class="btn btn-danger" onclick="deleteEmployee({{$item->id}})"><i class="fas fa-trash"></i> Sil</button>
                        
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
  function deleteEmployee(id){
   if(confirm("Silmək istədiyinizə əminsiniz?")){
     $.ajax({
        type: "POST",
        url: "{{route('employee.deleted')}}",
        data: {delete_id:id},
        success:function(response){
                $("#delete"+id).hide(1000);
        }
     })
   }
 }
</script>
@endsection