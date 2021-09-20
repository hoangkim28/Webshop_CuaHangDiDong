<H1 style="text-color:blue">Đặt hàng thành công.</H1>          
<strong>Tên: {{ $dataCustomer->name }}</strong><br>
Địa chỉ nhận hàng: {{ $dataCustomer->address }}<br>
Điện thoại: {{ $dataCustomer->phone }}<br>
<h3>Theo dõi đơn hàng <a href="{{route('getBillStatus', $dataBill->id )}}">tại đây</a></h3>                              
<h3>Hàng sẽ được giao 3 ngày kể từ ngày đặt.</h3><br>            
