<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Webervices
 *
 * @author sigit
 */
class Webservices extends CI_Controller{
    //put your code here
    function get_detail_lapak($idLapak) {
        $res = $this->db->query("SELECT * FROM pelapak INNER JOIN pasar ON pelapak.id_pasar=pasar.id_pasar WHERE id_pelapak IN ('$idLapak')");
        if($res->num_rows() > 0){
            $data['data'] = $res->row();
            $data['message'] = "Data Ditemukan";
            $data['error'] = 200;
        }else{
            $data['message'] = "Data tidak ada";
            $data['code'] = 404;
        }
        
        print json_encode($data);
    }
}
