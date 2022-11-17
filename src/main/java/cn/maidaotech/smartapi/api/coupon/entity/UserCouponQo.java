package cn.maidaotech.smartapi.api.coupon.entity;

import cn.maidaotech.smartapi.common.reposiotry.support.DataQueryObjectPage;
import cn.maidaotech.smartapi.common.reposiotry.support.QueryField;
import cn.maidaotech.smartapi.common.reposiotry.support.QueryType;

public class UserCouponQo extends DataQueryObjectPage {

    @QueryField(type = QueryType.EQUAL, name = "userId")
    private Integer userId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
