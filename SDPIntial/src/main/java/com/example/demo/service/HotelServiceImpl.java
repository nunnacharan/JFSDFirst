package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Hotel;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.repository.HotelRepository;

@Service
public class HotelServiceImpl implements HotelService
{

	@Autowired
	private HotelRepository hotelRepository;
	@Override
	public String addHotel(Hotel h) 
	{
		hotelRepository.save(h);
		return "Hotel Registered Success" ;
	}
	@Override
	public List<Hotel> viewallhotels() {
		
		return hotelRepository.findAll();
	}

}
