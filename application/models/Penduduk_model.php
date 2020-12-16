<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penduduk_model extends CI_Model
{
  public function getAllData()
  {
    return $this->db->get('tb_penduduk')->result();
  }

  public function deletePenduduk($id)
  {
    $this->db->delete('tb_penduduk', ['id' => $id]);
    return $this->db->affected_rows();
  }

  public function tambahPenduduk($data)
  {
    try {
      $this->db->insert('tb_penduduk', $data);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi kesalahan: ' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }

  public function updatePenduduk($data, $id)
  {
    try {
      $this->db->where('id', $id);
      $this->db->update('tb_penduduk', $data);

      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi kesalahan: ' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }

}