<?php

namespace App\Controllers;

class Customers extends BaseController
{
    public function index()
    {
        $data = array(
            'title' => 'Customer Accounts',

            'customers' => array(
                array(
                    'full_name' => 'Maria Adela Tongson',
                    'email' => 'adelatongson.com',
                    'phone' => '09216044633'
                ),
                array(
                    'full_name' => 'Inocencio Ivan Guillermo',
                    'email' => 'guillermoivan@gmail.com',
                    'phone' => '09184624873'
                ),
                array(
                    'full_name' => 'Alexandra Gwen Morales',
                    'email' => 'gwennyy12@gmail.com',
                    'phone' => '09189363196'
                ),
                array(
                    'full_name' => 'Lanz Allen Sacramento',
                    'email' => 'allensacramento@yahoo.com',
                    'phone' => '09648239611'
                ),
                array(
                    'full_name' => 'John Abram Tongson',
                    'email' => 'brammytongson@yahoo.com',
                    'phone' => '09216034828'
                )
            )
        );

        return view('partials/header', $data)
            . view('customers', $data)
            . view('partials/footer');
    }
}