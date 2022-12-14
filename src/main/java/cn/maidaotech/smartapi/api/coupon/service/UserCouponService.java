package cn.maidaotech.smartapi.api.coupon.service;

import cn.maidaotech.smartapi.api.coupon.entity.UserCouponQo;
import cn.maidaotech.smartapi.api.coupon.model.Coupon;
import cn.maidaotech.smartapi.api.coupon.model.UserCoupon;
import org.springframework.data.domain.Page;

import java.util.List;

public interface UserCouponService {

    Page<UserCoupon> userCoupons(UserCouponQo qo);

    List<Coupon> productCoupons(Integer productId) throws Exception;

    List<UserCoupon> tradeCoupons(List<Integer> ids) throws Exception;

    void wrapCoupon(List<UserCoupon> list);

    List<UserCoupon> findByUserIdAndStatus(Byte status);

    UserCoupon userCoupon(Integer id);

    void saveCoupon(Integer id);

    List<UserCoupon> findByUserId();

    void updateStatus(Integer id, Byte status);

    List<UserCoupon> findByStatus(Byte status);

    void syncStatus();

}
