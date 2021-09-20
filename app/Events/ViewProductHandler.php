<?php
namespace App\Events;

use App\product;
use Illuminate\Session\Store;

// Lắng nghe sự kiện --> Tăng lượt xem nhưng có giới hạn không tính nếu f5 liên tục.
class ViewProductHandler
{    
    private $session;

    public function __construct(Store $session)
    {
        $this->session = $session;
    }

    public function handle(Product $product)
	{
	    if (!$this->isPostViewed($product))
	    {
	        $product->increment('viewcount');
	        $this->storeProduct($product);
	    }
	}

	private function isPostViewed($product)
	{
	    $viewed = $this->session->get('viewed_products', []);

	    return array_key_exists($product->id, $viewed);
	}

	private function storeProduct($product)
	{
	    $key = 'viewed_products.' . $product->id;

	    $this->session->put($key, time());
	}
}