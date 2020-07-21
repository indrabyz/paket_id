<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class destination_data extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    //Menampilkan data 
    function index_get() {
        $id = $this->get('id');
        if ($id == '') {
            $data = $this->db->get('ujian')->result();
        } else {
            $this->db->where('id', $id);
            $data = $this->db->get('ujian')->result();
        }
        $this->response($data, 200);
    } 

    //Mengirim atau menambah data
    function index_post() {
        $data = array(
            'id'    => $this->post('id'),
            'customer_name'  => $this->post('customer_name'),
            'customer_address' => $this->post('customer_address'),
            'customer_email'  => $this->post('customer_email'),
            'customer_phone' => $this->post('customer_phone'),
            'customer_address_detail'  => $this->post('customer_address_detail'),
            'customer_zip_code' => $this->post('customer_zip_code'),
            'zone_code'  => $this->post('zone_code'),
            'organization_id' => $this->post('organization_id'),
            'location_id'  => $this->post('location_id'));
        $insert = $this->db->insert('ujian', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    //Memperbarui data yang telah ada
    function index_put() {
        $id = $this->put('id');
        $data = array(
            'id'    => $this->put('id'),
            'customer_name'  => $this->put('customer_name'),
            'customer_address' => $this->put('customer_address'),
            'customer_email'  => $this->put('customer_email'),
            'customer_phone' => $this->put('customer_phone'),
            'customer_address_detail'  => $this->put('customer_address_detail'),
            'customer_zip_code' => $this->put('customer_zip_code'),
            'zone_code'  => $this->put('zone_code'),
            'organization_id' => $this->put('organization_id'),
            'location_id'  => $this->put('location_id'));
        $this->db->where('id', $id);
        $update = $this->db->update('ujian', $data);
        if ($update) {
            $this->response($data, 200); 
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    //Menghapus salah satu data
    function index_delete() {
        $id = $this->delete('id');
        $this->db->where('id', $id);
        $delete = $this->db->delete('ujian');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
}
?>