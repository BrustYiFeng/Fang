package cn.brust.zufang.mapper;

import cn.brust.zufang.entities.ShopArea;
import cn.brust.zufang.entities.ShopAreaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface ShopAreaMapper {
    int countByExample(ShopAreaExample example);

    int deleteByExample(ShopAreaExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ShopArea record);

    int insertSelective(ShopArea record);

    List<ShopArea> selectByExampleWithRowbounds(ShopAreaExample example, RowBounds rowBounds);

    List<ShopArea> selectByExample(ShopAreaExample example);

    ShopArea selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ShopArea record, @Param("example") ShopAreaExample example);

    int updateByExample(@Param("record") ShopArea record, @Param("example") ShopAreaExample example);

    int updateByPrimaryKeySelective(ShopArea record);

    int updateByPrimaryKey(ShopArea record);
}