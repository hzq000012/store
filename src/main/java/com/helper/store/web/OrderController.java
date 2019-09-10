package com.helper.store.web;

import com.helper.store.domain.JsonMessage;
import com.helper.store.service.OrderService;
import com.helper.store.util.Constants;
import com.helper.store.util.ParamsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author yanghao
 * @create 2019-08-08 16:22
 * @Description:
 */
@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService orderService;
    /**
     * 生成订单
     * @param request
     * @return
     */
    @PostMapping("/saveOrder")
    public JsonMessage saveOrder(HttpServletRequest request){
        Map<String,Object> param = ParamsUtils.getParmas(request);
        return orderService.saveOrder(param);
    }

    /**
     * 取消订单
     * @param request
     * @return
     */
    @PostMapping("/cancelOrder")
    public JsonMessage cancelOrder(HttpServletRequest request){
        Map<String,Object> param = ParamsUtils.getParmas(request);
        return orderService.cancelOrder(param);
    }

    /**
     * 立即付款
     * @param request
     * @return
     */
    @PostMapping("/payOrder")
    public JsonMessage payOrder(HttpServletRequest request){
        Map<String,Object> param = ParamsUtils.getParmas(request);
        return orderService.payOrder(param);
    }
    /**
     * 填写快递订单号
     * @param request
     * @return
     */
    @PostMapping("/inputTrackingNumber")
    public JsonMessage inputTrackingNumber(HttpServletRequest request){
        Map<String,Object> param = ParamsUtils.getParmas(request);
        return orderService.inputTrackingNumber(param);
    }
    /**
     * 获取快递单号
     * @param request
     * @return
     */
    @GetMapping("/getTrackingNumber")
    public JsonMessage getTrackingNumber(HttpServletRequest request){
        Map<String,Object> param = ParamsUtils.getParmas(request);
        return orderService.getTrackingNumber(param);
    }
    /**
     * 根据buysellID获取订单信息
     * @param request
     * @return
     */
    @GetMapping("/getOrderByBuyorsellId")
    public JsonMessage getOrderByBuyorsellId(HttpServletRequest request){
        JsonMessage result = new JsonMessage();
        Map<String, Object> data=new HashMap<String, Object>(16);
        Map<String, Object> param = ParamsUtils.getParmas(request);
        try {
            List<Map<String, Object>> list = orderService.getOrderByBuyorsellId(param);
            data.put("orderList",list);
            result.setResponseCode(Constants.RES_CODE_0);
            result.setErrorMessage(Constants.RES_MESSAGE_0);
            result.setData(data);
        }catch (Exception e){

            result.setResponseCode(Constants.RES_CODE_101);
            result.setErrorMessage(Constants.RES_MESSAGE_101);
        }
        return result;
    }


    /**
     * 删除订单
     * @param request
     * @return
     */
    @PostMapping("/deleteOrder")
    public JsonMessage deleteOrder(HttpServletRequest request){
        Map<String,Object> param = ParamsUtils.getParmas(request);
        return orderService.deleteOrder(param);
    }
}