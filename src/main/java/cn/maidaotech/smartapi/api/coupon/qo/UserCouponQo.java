package cn.maidaotech.smartapi.api.coupon.qo;

import cn.maidaotech.smartapi.common.reposiotry.support.DataQueryObjectSort;
import cn.maidaotech.smartapi.common.reposiotry.support.QueryField;
import cn.maidaotech.smartapi.common.reposiotry.support.QueryType;

public class UserCouponQo extends DataQueryObjectSort {

    @QueryField(type = QueryType.EQUAL, name = "status")


    private Byte status;


    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}
