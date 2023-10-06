@extends('layouts.librarian.main')
@section('title', 'Librarian | Books')

@section('content')
<main>
    <div class="container-fluid px-4">  
        <h1 class="mt-4">Liên Hệ</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{route('librarian.getEmailList')}}">librarian</a></li>
            <li class="breadcrumb-item active">Contact</li>
        </ol>
        <div class="input-group w-50">
            <input class="form-control" id="search_contact" type="text" placeholder="Search..." aria-label="Search" aria-describedby="button-addon2">
            <button class="btn btn-dark" id="button-addon2"><i class="bi bi-search"></i></button>
         </div>
        @if (session('success'))
		<div class="alert alert-success">
			{{session('success')}}
		</div>
        @endif
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Danh sách danh mục
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                   
                    <thead>
                    <tr>
                    <th scope="col" class="border text-center">id</th>
                     <th scope="col" class="border text-center">Email</th>
                     <th scope="col" class="border text-center">Name</th>
                     <th scope="col" class="border text-center">subject</th>
                     <th scope="col" class="border text-center">message</th>
                     <th scope="col" class="border text-center">tình trạng</th>
                     <th scope="col" class="border text-center">ngày liên hệ</th>
                     <th scope="col" class="border text-center">Edit</th>
                     <th scope="col" class="border text-center">DEL</th>
                  </tr>
                        
                    </thead>
                    
                    <tbody>
                        @foreach ($emails as $item)
                        <td class="border text-center">{{$item->id }}</td>
                        <td class="border text-center">{{$item->email }}</td>
                        <td class="border text-center w-25">{{$item->name }}</td>
                        <td class="border text-center w-25">{{$item->subject }}</td>
                        <td class="border text-center">{{$item->message }}</td>
                        <td>
                           @if ($item->status == 0 )
                                    <span class="text-success" >Đã liên hệ</span>
                                @else($item->status == 1)
                                    <span class="text-danger" >Chưa liên hệ</span>
                               
                                @endif
                        </td>
                        <td class="border text-center w-25">{{$item->created_at }}</td>
                            <td>
                                <a href="{{route('librarian.getEmailEdit',['id'=> $item->id ])}}" class="btn btn-success" >
                                    <i class="fas fa-edit"></i>
                                   </a>
                            </td>
                            <td><form action="{{route('librarian.getEmailDelete',['id'=> $item->id ])}}" onclick="return confirm('bạn có muốn xóa {{$item->name}}');" method="post">
                     
                                @csrf
                                @method('DELETE')
                                {{-- <a type="submit" class="btn btn-danger" value="Xóa">  --}}
                                   <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i> </button>
                              </form> </td>
                        </tr>
                        @endforeach
                        
                       
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>

{{-- @include('librarian.modal.cate_edit') --}}
@endsection

@section('js')
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/source/assets/dest/js/scripts1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="/source/assets/dest/js/datatables-simple-demo.js"></script>
@endsection

