package com.fxy.campus.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.fxy.campus.pojo.Grade;

import java.util.List;

public interface GradeService extends IService<Grade> {


    IPage<Grade> getGradeByOpr(Page<Grade> page, String gradeName);

    List<Grade> getGrades();
}
