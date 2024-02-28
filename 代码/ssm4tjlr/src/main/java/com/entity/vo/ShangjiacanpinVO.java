package com.entity.vo;

import com.entity.ShangjiacanpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 商家餐品
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-15 22:52:57
 */
public class ShangjiacanpinVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 商家名称
	 */
	
	private String shangjiamingcheng;
		
	/**
	 * 档口号
	 */
	
	private String dangkouhao;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 餐品名
	 */
	
	private String canpinming;
		
	/**
	 * 餐品种类
	 */
	
	private String canpinzhonglei;
		
	/**
	 * 单价
	 */
	
	private Float danjia;
		
	/**
	 * 餐品图片
	 */
	
	private String canpintupian;
		
	/**
	 * 餐品详情
	 */
	
	private String canpinxiangqing;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：商家名称
	 */
	 
	public void setShangjiamingcheng(String shangjiamingcheng) {
		this.shangjiamingcheng = shangjiamingcheng;
	}
	
	/**
	 * 获取：商家名称
	 */
	public String getShangjiamingcheng() {
		return shangjiamingcheng;
	}
				
	
	/**
	 * 设置：档口号
	 */
	 
	public void setDangkouhao(String dangkouhao) {
		this.dangkouhao = dangkouhao;
	}
	
	/**
	 * 获取：档口号
	 */
	public String getDangkouhao() {
		return dangkouhao;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：餐品名
	 */
	 
	public void setCanpinming(String canpinming) {
		this.canpinming = canpinming;
	}
	
	/**
	 * 获取：餐品名
	 */
	public String getCanpinming() {
		return canpinming;
	}
				
	
	/**
	 * 设置：餐品种类
	 */
	 
	public void setCanpinzhonglei(String canpinzhonglei) {
		this.canpinzhonglei = canpinzhonglei;
	}
	
	/**
	 * 获取：餐品种类
	 */
	public String getCanpinzhonglei() {
		return canpinzhonglei;
	}
				
	
	/**
	 * 设置：单价
	 */
	 
	public void setDanjia(Float danjia) {
		this.danjia = danjia;
	}
	
	/**
	 * 获取：单价
	 */
	public Float getDanjia() {
		return danjia;
	}
				
	
	/**
	 * 设置：餐品图片
	 */
	 
	public void setCanpintupian(String canpintupian) {
		this.canpintupian = canpintupian;
	}
	
	/**
	 * 获取：餐品图片
	 */
	public String getCanpintupian() {
		return canpintupian;
	}
				
	
	/**
	 * 设置：餐品详情
	 */
	 
	public void setCanpinxiangqing(String canpinxiangqing) {
		this.canpinxiangqing = canpinxiangqing;
	}
	
	/**
	 * 获取：餐品详情
	 */
	public String getCanpinxiangqing() {
		return canpinxiangqing;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
