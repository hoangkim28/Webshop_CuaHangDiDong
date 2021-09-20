<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Session\Store;
use Session;

class Filter
{
    private $session;

    public function __construct(Store $session)
    {
        $this->session = $session;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $products = $this->getViewedProducts();

        if (!is_null($products))
        {
            $products = $this->cleanExpiredViews($products);
            $this->storeProducts($products);
        }

        return $next($request);
    }

    private function getViewedProducts()
    {
        return $this->session->get('viewed_products', null);
    }

    private function cleanExpiredViews($products)
    {
        $time = time();

        // Sao một giờ mới tính thêm 1 view nếu F5
        $throttleTime = 3600;

        return array_filter($products, function ($timestamp) use ($time, $throttleTime)
        {
            return ($timestamp + $throttleTime) > $time;
        });
    }

    private function storeproducts($products)
    {
        $this->session->put('viewed_products', $products);
    }
}