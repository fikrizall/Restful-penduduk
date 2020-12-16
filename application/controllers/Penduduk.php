<?php
defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

class Penduduk extends REST_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('penduduk_model');
  }

  public function index_get()
  {

    $penduduk = $this->penduduk_model->getAllData();

    $data = [
      'status' => true,
      'data' => $penduduk
    ];

    $this->response($data, REST_Controller::HTTP_OK);
  }

  public function index_delete()
  {
    $id = $this->delete('id');
    if ($id === null) {
      $this->response([
        'status' => false,
        'msg' => 'Tidak ada id yang dipilih'
      ], REST_Controller::HTTP_BAD_REQUEST);
    } else {
      if ($this->penduduk_model->deletePenduduk($id) > 0) {
        $this->response([
          'status' => true,
          'id' => $id,
          'msg' => 'Data berhasil dihapus'
        ], REST_Controller::HTTP_OK);
      } else {
        $this->response([
          'status' => false,
          'msg' => 'Id tidak ditemukan'
        ], REST_Controller::HTTP_BAD_REQUEST);
      }
    }
  }

  public function index_post()
  {
    $data = [
      'id' => $this->post('id'),
      'nama' => $this->post('nama'),
      'alamat' => $this->post('alamat'),
      'notelp' => $this->post('notelp'),
    ];

    $simpan = $this->penduduk_model->tambahPenduduk($data);
    
    if ($simpan['status']) {
      $this->response(['status' => true, 'msg' => 'Data telah ditambahkan'], REST_Controller::HTTP_OK);
    } else {
      $this->response(['status' => false, 'msg' => $simpan['msg']], REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
    }
  }

  public function index_put()
  {
    $data = [
      'id' => $this->put('id'),
      'nama' => $this->put('nama'),
      'alamat' => $this->put('alamat'),
      'notelp' => $this->put('notelp'),
    ];

    $id = $this->put('id');
    
    $simpan = $this->penduduk_model->updatePenduduk($data, $id);

    if ($simpan['status']) {
      $status = (int) $simpan['data'];
      if ($status > 0) {
        $this->response(['status' => true, 'msg' => 'Data telah diupdate'], REST_Controller::HTTP_OK);
      } else {
        $this->response(['status' => false, 'msg' => 'Tidak ada data yang dirubah'], REST_Controller::HTTP_BAD_REQUEST);
      }
    } else {
      $this->response(['status' => false, 'msg' => $simpan['msg']], REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
    }
  }
  

 
}
