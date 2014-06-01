package com.wuxincheng.manage.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.manage.dao.RequestDao;
import com.wuxincheng.manage.model.Request;
import com.wuxincheng.manage.service.RequestService;
import com.wuxincheng.manage.util.IPUtil;

@Service("requestService")
public class RequestServiceImpl implements RequestService {

	@Resource RequestDao requestDao;

	@Override
	public Map<String, Object> queryPager(int start, int end) {
		// 返回结果
		Map<String, Object> reault = new HashMap<String, Object>();
		
		// 查询条件
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", start);
		params.put("end", end);
		
		int totalCount = requestDao.queryCount(); // 总记录数
		List<Request> pojoList = requestDao.queryPager(params); // 当前页的数据
		
		reault.put("pojoList", pojoList);
		reault.put("totalCount", totalCount);
		
		return reault;
	}

	@Override
	public List<Map<String, String>> countBySocial(String blogId) {
		return requestDao.countBySocial(blogId);
	}

	@Override
	public void updateNullIpAddress() {
		// 查询空IP区域列表
		List<Map<String, String>> requests = requestDao.queryNullIpAddress();
		
		String requestIp = null;
		String ipAddress = null;
		Map<String, String> params = new HashMap<String, String>();
		for (Map<String, String> request : requests) {
			requestIp = request.get("requestIp");

			ipAddress = IPUtil.getAddressByIp(requestIp);
			params.put("ipAddress", ipAddress);
			params.put("requestIp", requestIp);
			
			requestDao.updateIpAddress(params);
		}
	}

}