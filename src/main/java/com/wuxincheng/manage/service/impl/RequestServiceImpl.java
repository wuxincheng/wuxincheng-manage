package com.wuxincheng.manage.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.wuxincheng.manage.dao.RequestDao;
import com.wuxincheng.manage.model.Request;
import com.wuxincheng.manage.service.RequestService;
import com.wuxincheng.manage.util.IPUtil;

@Service("requestService")
public class RequestServiceImpl implements RequestService {

	private static Logger logger = LoggerFactory.getLogger(RequestServiceImpl.class);
	
	@Resource RequestDao requestDao;

	@Override
	public Map<String, Object> queryPager(int start, int end, Request query) {
		// 返回结果
		Map<String, Object> reault = new HashMap<String, Object>();
		
		// 查询条件
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", start);
		params.put("end", end);
		
		if (query != null && !"".equals(query)) {
			// 封装查询条件
			params.put("requestIp", query.getRequestIp());
		}
		
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
		Map<String, String> ipInfo = null;
		Map<String, String> params = new HashMap<String, String>();
		
		if (requests.size() < 1) {
			logger.info("目前时间点所有IP已经处理完成");
			return;
		}
		
		for (Map<String, String> request : requests) {
			requestIp = request.get("requestIp");

			ipInfo = IPUtil.getAddressByIp(requestIp);
			params.put("requestIp", requestIp);
			params.putAll(ipInfo);
			
			requestDao.updateIpAddress(params);
		}
	}

	@Override
	public void processNullIpAddressTask() throws Exception {
		logger.info("定时任务: 开始处理访问请求IP区域信息");
		
		updateNullIpAddress();
		// logger.info("定时任务");
		
		logger.info("定时任务: 结束处理访问请求IP区域信息");
	}

}
