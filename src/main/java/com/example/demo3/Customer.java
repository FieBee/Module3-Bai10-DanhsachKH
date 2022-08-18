package com.example.demo3;

import java.time.LocalDate;

public class Customer {
    private int id;
    private String name;
    private LocalDate birth;
    private String address;
    private String mota;


    public Customer(int id, String name, String birth, String address, String mota) {
        this.id = id;
        this.name = name;
        this.birth = LocalDate.parse(birth);
        this.address = address;
        this.mota = mota;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getBirt() {
        return birth;
    }

    public void setBirt(LocalDate birt) {
        this.birth = birt;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }
}
