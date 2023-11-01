package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Employee;
import com.example.demo.model.Hotel;

public interface HotelService {
	public String addHotel(Hotel h);
	public List<Hotel> viewallhotels();
}
