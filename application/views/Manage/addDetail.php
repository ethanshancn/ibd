<link rel="stylesheet" href="/ibd/public/assets/bootstrap-datepicker-1.5.1/css/bootstrap-datepicker.min.css" />
<div class="container">
    <div class="row" style="margin-top: 50px;">
        <p class="text-center"><h1><b style="font-size: 50px;">数据录入</b></h1></p>
    </div>
    <div class="container-block regist-block" style="margin-top: 50px; padding: 20px;">
        <div class="row" style="padding: 10px;">
            <div class="col-md-6 text-left" style="font-size: 20px;margin-left: 20px; margin-top: 10px;">
                个人信息录入
            </div>
        </div>
        <div class="row" style="padding-left: 50px; padding-right: 50px;">
            <form class="form-horizontal" name="regDetail">
                <input type="hidden" name="gid" value="">
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">住院号</label></td>
                            <td><input type="text" name="hospital_num" class="form-control"></td>
                            <td><label class="control-label">编号</label></td>
                            <td><input type="text" name="paper_num" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">姓名</label></td>
                            <td><input type="text" name="name" class="form-control"></td>
                            <td><label class="control-label">民族</label></td>
                            <td><input type="text" name="nation" class="form-control" value="汉"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">年龄</label></td>
                            <td><input type="number" name="age" class="form-control"></td>
                            <td><label class="control-label">学历</label></td>
                            <td><select name="eid" class="form-control">
                                    <?php foreach ($allEdu as $val):?>
                                        <option value="<?=$val['eid']?>" <?php if($val['most_popular'] == 1) echo "selected";?>><?=$val['ename']?></option>
                                    <?php endforeach;?>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">婚姻</label></td>
                            <td><select name="married" class="form-control">
                                    <option value="0">未婚</option>
                                    <option value="1" selected>已婚</option>
                                </select>
                            </td>
                            <td><label class="control-label">工作及单位</label></td>
                            <td><input type="text" name="work" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">出生地</label></td>
                            <td><input type="text" name="birth_place" class="form-control"></td>
                            <td><label class="control-label">现住址</label></td>
                            <td><input type="text" name="now_home_place" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">身高</label></td>
                            <td><input type="number" name="height" class="form-control"></td>
                            <td><label class="control-label">妊娠高危因素评分</label></td>
                            <td><input type="number" name="pregnancy_risk" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">孕前体重</label></td>
                            <td><input type="number" name="common_weight" class="form-control"></td>
                            <td><label class="control-label">产时体重</label></td>
                            <td><input type="number" name="birth_weight" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">初次胎动时间</label></td>
                            <td><input type="text" name="first_move" class="form-control datetimepicker"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">早孕反应开始时间</label></td>
                            <td><input type="text" name="morning_sick_beg" class="form-control datetimepicker"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">早孕反应停止时间</label></td>
                            <td><input type="text" name="morning_sick_end" class="form-control datetimepicker"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">是否阴道流血</label></td>
                            <td>
                                <select name="is_vaginal_blood" class="form-control">
                                    <option value="0" selected>否</option>
                                    <option value="1">是</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">是否保胎治疗</label></td>
                            <td>
                                <select name="is_prevent_mis" class="form-control">
                                    <option value="0" selected>否</option>
                                    <option value="1">是</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">是否补充叶酸</label></td>
                            <td>
                                <select name="is_folic" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">是否补充维生素</label></td>
                            <td>
                                <select name="is_vitamin" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">是否补充铁剂</label></td>
                            <td>
                                <select name="is_iron" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">慎用药物暴露</label></td>
                            <td><input type="text" name="careful_grug" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">病毒暴露</label></td>
                            <td><input type="text" name="virus" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">射线暴露</label></td>
                            <td><input type="text" name="ray" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">其他</label></td>
                            <td><input type="text" name="other" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td rowspan="1">
                                <label class="control-label">慢性病史</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a>
                            </td>
                            <td><input type="text" name="pass_ill_type_1" class="form-control"></td>
                        </tr>
                        <tr>
                            <td rowspan="1"><label class="control-label">传染病史</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td><input type="text" name="pass_ill_type_2" class="form-control"></td>
                        </tr>
                        <tr>
                            <td rowspan="1"><label class="control-label">重大外伤史</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td><input type="text" name="pass_ill_type_3" class="form-control"></td>
                        </tr>
                        <tr>
                            <td rowspan="1"><label class="control-label">手术史</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td><input type="text" name="pass_ill_type_4" class="form-control"></td>
                        </tr>
                        <tr>
                            <td rowspan="1"><label class="control-label">输血史</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td><input type="text" name="pass_ill_type_5" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">吸烟史</label></td>
                            <td>
                                <select name="is_smoking" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">饮酒史</label></td>
                            <td>
                                <select name="is_drinking" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">疫水、疫区接触史</label></td>
                            <td>
                                <select name="is_infected" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">冶游史</label></td>
                            <td>
                                <select name="is_lustful" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">初潮年龄</label></td>
                            <td><input type="number" name="menarche_age" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">经期</label></td>
                            <td><input type="number" name="menstrual" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">周期</label></td>
                            <td><input type="number" name="period" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">末次月经时间</label></td>
                            <td><input type="text" name="last_mens" class="form-control datetimepicker"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">月经量</label></td>
                            <td><input type="number" name="mens_volume" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">痛经史</label></td>
                            <td>
                                <select name="is_dys" class="form-control">
                                    <option value="0" selected>没有</option>
                                    <option value="1">有</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="control-label">白带(是否正常?)</label></td>
                            <td>
                                <select name="is_whites_abnormal" class="form-control">
                                    <option value="0" selected>正常</option>
                                    <option value="1">异常</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td rowspan="1"><label class="control-label">足月产</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td><label class="control-label">时间</label></td>
                            <td><input type="text" name="history_birth_time_type_1" class="form-control"></td>
                            <td><label class="control-label">地点</label></td>
                            <td><input type="text" name="history_birth_place_type_1" class="form-control"></td>
                            <td><label class="control-label">性别</label></td>
                            <td>
                                <select name="history_birth_sex_type_1" class="form-control">
                                    <option value="0" selected>女</option>
                                    <option value="1">男</option>
                                </select>
                            </td>
                            <td><label class="control-label">出身体重</label></td>
                            <td><input type="text" name="history_birth_birth_weight_type_1" class="form-control"></td>
                        </tr>

                        <tr>
                            <td rowspan="1"><label class="control-label">早产</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td><label class="control-label">时间</label></td>
                            <td><input type="text" name="history_birth_time_type_2" class="form-control"></td>
                            <td><label class="control-label">地点</label></td>
                            <td><input type="text" name="history_birth_place_type_2" class="form-control"></td>
                            <td><label class="control-label">性别</label></td>
                            <td>
                                <select name="history_birth_sex_type_2" class="form-control">
                                    <option value="0" selected>女</option>
                                    <option value="1">男</option>
                                </select>
                            </td>
                            <td><label class="control-label">出身体重</label></td>
                            <td><input type="text" name="history_birth_birth_weight_type_2" class="form-control"></td>
                        </tr>
                        <tr>
                            <td rowspan="1"><label class="control-label">流产</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td><label class="control-label">时间</label></td>
                            <td><input type="text" name="history_birth_time_type_3" class="form-control"></td>
                            <td><label class="control-label">地点</label></td>
                            <td><input type="text" name="history_birth_time_type_3" class="form-control"></td>
                            <td><label class="control-label">是否清宫</label></td>
                            <td colspan="3">
                                <select name="history_birth_is_clean_uterus_type_3" class="form-control">
                                    <option value="1" selected>是</option>
                                    <option value="0">否</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="1"><label class="control-label">夭折</label>
                                &nbsp;
                                <a class="btn btn-danger btn-xs glyphicon glyphicon-plus add_input_control" role="button"></a></td>
                            <td colspan="8"><input type="text" name="history_birth_other_inf_type_4" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">结婚年龄</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">是否再婚</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">是否近亲</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">初次性生活年龄</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">配偶姓名</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">配偶年龄</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">配偶学历</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">配偶工作</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">高血压病</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">糖尿病</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">血友病</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">白化病</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">精神病</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">其他</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">白细胞计数</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">红细胞计数</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">血红蛋白</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>

                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">尿比重</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">胴体</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">蛋白</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">葡萄糖</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">总蛋白</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">白蛋白</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">总胆红素</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">ALT</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">AST</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">肌酐</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">尿素氮</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">血糖</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">甘胆酸</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">弓形虫</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">风疹</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">泡状病毒</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">巨细胞</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">其他</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">乙肝表面抗原</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">乙肝表面抗体</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">乙肝核心抗体</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">乙肝E抗原</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">乙肝E抗体</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">丙肝抗体</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">HIV</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">梅毒</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">铁蛋白</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">ABO</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">Rh</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">检查日期</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查单位</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">检查结果</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">累计次数</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">孕周与停经是否相符</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
                <div class="table">
                    <table class="table table-bordered table-hover table-striped">
                        <tr>
                            <td><label class="control-label">唐氏筛查</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">OGTT</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">血压</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><label class="control-label">妊娠结局</label></td>
                            <td><input type="text" name="" class="form-control"></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
        <div class="row" style="padding: 20px;">
            <div class="col-md-6 text-center">
                <button type="button" class="btn btn-primary" style="width: 100px;" onclick="">确定</button>
            </div>
            <div class="col-md-6 text-center">
                <button type="button" class="btn btn-default" style="width: 100px;" onclick="">列表</button>
            </div>
        </div>
    </div>
</div>
<script src="/ibd/public/assets/bootstrap-datepicker-1.5.1/js/bootstrap-datepicker.min.js"></script>
<script src="/ibd/public/js/addDetail.js"></script>
<script>
    addDetail.init();
</script>