package com.pojo;

public class Images {
	private int goodsid;
	private int imagesid;
	private String images;
	private String introduce;
	private String goodsprice;
	private String small1;
	private String small2;
	private String small3;
	private String small4;
	private String big1;
	private String big2;
	private String big3;
	private String big4;
	private String carpic;
	private String smallcar;

	public String getSmallcar() {
		return smallcar;
	}
	public void setSmallcar(String smallcar) {
		this.smallcar = smallcar;
	}
	public String getCarpic() {
		return carpic;
	}
	public void setCarpic(String carpic) {
		this.carpic = carpic;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public int getImagesid() {
		return imagesid;
	}
	public void setImagesid(int imagesid) {
		this.imagesid = imagesid;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(String goodsprice) {
		this.goodsprice = goodsprice;
	}
	
	@Override
	public int hashCode() {
		return imagesid;
	}

	@Override
	public boolean equals(Object obj) {

		if (obj instanceof Images) {
			if (((Images) obj).imagesid == this.imagesid) {
				return true;
			}
		}

		return false;

	}
	public String getSmall1() {
		return small1;
	}
	public void setSmall1(String small1) {
		this.small1 = small1;
	}
	public String getSmall2() {
		return small2;
	}
	public void setSmall2(String small2) {
		this.small2 = small2;
	}
	public String getSmall3() {
		return small3;
	}
	public void setSmall3(String small3) {
		this.small3 = small3;
	}
	public String getSmall4() {
		return small4;
	}
	public void setSmall4(String small4) {
		this.small4 = small4;
	}
	public String getBig1() {
		return big1;
	}
	public void setBig1(String big1) {
		this.big1 = big1;
	}
	public String getBig2() {
		return big2;
	}
	public void setBig2(String big2) {
		this.big2 = big2;
	}
	public String getBig3() {
		return big3;
	}
	public void setBig3(String big3) {
		this.big3 = big3;
	}
	public String getBig4() {
		return big4;
	}
	public void setBig4(String big4) {
		this.big4 = big4;
	}
}
