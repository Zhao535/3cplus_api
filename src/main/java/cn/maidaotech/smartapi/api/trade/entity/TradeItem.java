package cn.maidaotech.smartapi.api.trade.entity;

import cn.maidaotech.smartapi.api.product.model.Product;

public class TradeItem {
    private Product product;
    private Integer num;
    private String productSno;
    private Integer id;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getProductSno() {
        return productSno;
    }

    public void setProductSno(String productSno) {
        this.productSno = productSno;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

}
