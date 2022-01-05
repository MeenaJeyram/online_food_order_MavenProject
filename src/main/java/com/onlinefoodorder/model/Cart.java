package com.onlinefoodorder.model;

public class Cart {
	int cartid;
	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	int item_id;

	public int getItem_id() {
		return item_id;
	}

	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}

	public Cart(int item_id) {
		super();
		this.item_id = item_id;
	}

	public Cart() {
		super();
	}
}
