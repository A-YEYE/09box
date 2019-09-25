package kr.or.connect.scheduler;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import kr.or.connect.dto.Goods;
import kr.or.connect.goods.model.service.GoodsService;

@Controller
@Component
public class Scheduler {
	@Autowired
	GoodsService goodsService;
	
	@Scheduled(cron="0 0 0 * * *")
	public void everyNight() {
		System.out.println("스케줄러 실행");
		
		List<Goods> list = goodsService.optionSelect();
		for(Goods goods : list) {
			int progress = goods.getProgress();
			Date date = new Date();
			long curDateTime = date.getTime();	// 현재
			long sellEnd = goods.getSellEnd().getTime()+1;	// 종료
//			long restTime = (curDateTime - sellEnd);	// 현재시간-종료시간
			int sellNum = goods.getSellNum();	// 판매갯수
			int goalNum = goods.getGoalNum();	// 목표갯수
			
			if(sellEnd < curDateTime) {	// 종료된 것들
				if(sellNum > goalNum) {
					goods.setProgress(1);	// 성공
					System.out.println("성공: " + goods);
				}else {
					goods.setProgress(2);	// 실패
				}goodsService.updqteScheduler(goods);
			}
			
		}
	}
}
