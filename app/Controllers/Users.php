<?php

namespace App\Controllers;

class Users extends BaseController
{
    public function index()
    {
        $data = array(
            'title' => 'User Accounts',

            'users' => array(
                array(
                    'username' => 'admin1',
                    'full_name' => 'Ella Guillermo',
                    'role' => 'Administrator'
                ),
                array(
                    'username' => 'registrar1',
                    'full_name' => 'Ibanog Tongson',
                    'role' => 'Registrar'
                ),
                array(
                    'username' => 'cashier1',
                    'full_name' => 'Joy Nuque',
                    'role' => 'Cashier'
                ),
                array(
                    'username' => 'staff1',
                    'full_name' => 'Jordan Cabrera',
                    'role' => 'Staff'
                ),
                array(
                    'username' => 'manager1',
                    'full_name' => 'Adam De Guzman',
                    'role' => 'Manager'
                )
            )
        );

        return view('partials/header', $data)
            . view('users', $data)
            . view('partials/footer');
    }
}