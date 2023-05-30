package com.multicampus.kb03.weddingBuddy.repository.mybatis.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;

import com.multicampus.kb03.weddingBuddy.dto.Planner;

import com.multicampus.kb03.weddingBuddy.dto.Planner_Review;
import com.multicampus.kb03.weddingBuddy.dto.Review_Image;

import com.multicampus.kb03.weddingBuddy.dto.Planner_Like;
import com.multicampus.kb03.weddingBuddy.dto.Top3Vo;
import com.multicampus.kb03.weddingBuddy.dto.User;
import com.multicampus.kb03.weddingBuddy.paging.Criteria;


@Mapper
public interface PlannerMapper {

	public int insert(Planner planner);

	public int update(Planner planner);

	public void delete(int planner_id);

	public int count();

	public Planner selectOne(int planner_id);

	public List<Top3Vo> selectAll();
	
	public List<Top3Vo> selectTop3();
	
	public Planner readUserWithIDPW(@Param("account_id")String account_id, @Param("password")String password);
	
	public Planner selectOne2(String account_id);

	public List<User> chattingWithSomeone(int planner_id);



	public int insertReview();

	public int saveReviewImage(Review_Image image);
	
	public int insertReview(Planner_Review review);
	
	public List<Planner_Review> getReviewDetail(int plannerId);

	public List<Review_Image> getReviewImages(int reviewId) throws Exception;

	public String getUserAccountName(int user_id);

	public List<Top3Vo> searchByAd(String address);

	public List<Top3Vo> searchByName(String name);

	public List<Top3Vo> searchByGroup(String agency);


	public void insertPlannerLike(Map<String, Object> parameters);

	public List<Planner_Review> getTop3ReviewsByPlannerId(int planner_id);
	public List<Planner> selectPlannerLike(int user_id);

	public Planner_Like getPlannerLike(@Param(value = "user_id") int user_id, @Param(value = "planner_id")int planner_id);
	
	public int updateFavorite(int planner_like_id, boolean isFavorite);

	public Planner updateFavoriteStatus(int planner_id, boolean isFavorite);

	public void deletePlannerLike(@Param(value = "user_id")int user_id,  @Param(value = "planner_like_id") int planner_like_id);
	
	
}
