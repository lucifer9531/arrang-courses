package com.lucifer.utils;

import cn.hutool.core.lang.Validator;
import cn.hutool.core.util.ObjectUtil;
import com.lucifer.exception.BadRequestException;

/**
 * 验证工具
 *
 * @author lucifer
 */
public class ValidationUtil {

    /**
     * 验证空
     */
    public static void isNull(Object obj, String entity, String parameter , Object value){
        if(ObjectUtil.isNull(obj)){
            String msg = entity + " 不存在: "+ parameter +" is "+ value;
            throw new BadRequestException(msg);
        }
    }
}
