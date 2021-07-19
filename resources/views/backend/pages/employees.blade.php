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
        <h3 class="card-title">{{__("language.employeeh3")}}</h3>

      <div class="card-tools">
        <a href="{{route('employee.create')}}" class="btn btn-success"><i class="fas fa-plus"></i> {{__("language.employeebtnadd")}}</a>
        
      </div>
    </div>
    <div class="card-body">

        <table id="dataTable_1" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>{{__("language.employeefname")}}</th>
                    <th>{{__("language.employeelname")}}</th>
                    <th>{{__("language.employeecname")}}</th>
                    <th>Email</th>
                    <th>{{__("language.employeephone")}}</th>
                    <th>{{__("language.employeework")}}</th>
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
                    <td width="200px">
                        <a href="{{route('employee.edit',$item->id)}}" class="btn btn-primary"><i class="fas fa-edit"></i> {{__("language.employeeupdate")}}</a>
                        
                        <button class="btn btn-danger" onclick="deleteEmployee({{$item->id}})"><i class="fas fa-trash"></i> {{__("language.employeedelete")}}</button>
                        
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
            "emptyTable": "{{__("language.dtempyt")}}",
            "processing": "{{__("language.dtprocessing")}}",
            "sDecimal": ".",
            "sInfo": "_TOTAL_ {{__("language.dtdatashow")}} _START_ - _END_ {{__("language.dtdatashowlength")}}",
            "sInfoFiltered": "(_MAX_ {{__("language.dtfiltered")}})",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "{{__("language.dtpage")}} _MENU_ {{__("language.dtlengthmenu")}}",
            "sLoadingRecords": "{{__("language.dtloading")}}",
            "sSearch": "{{__("language.dtsearch")}}",
            "sZeroRecords": "{{__("language.dtrecords")}}",
            "oPaginate": {
                "sFirst": "İlk",
                "sLast": "Son",
                "sNext":     "{{__("language.dtafter")}}",
                "sPrevious": "{{__("language.dtbefore")}}"
               
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