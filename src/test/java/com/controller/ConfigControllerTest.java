package com.controller;

import com.entity.ConfigEntity;
import com.service.ConfigService;
import com.utils.PageUtils;
import com.utils.R;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.util.ReflectionTestUtils;

import java.util.Arrays;
import java.util.HashMap;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.anyMap;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class ConfigControllerTest {

    @Mock
    private ConfigService configService;

    private ConfigController controller;

    @BeforeEach
    void setUp() {
        controller = new ConfigController();
        ReflectionTestUtils.setField(controller, "configService", configService);
    }

    @Test
    void listShouldExcludeFaceFileConfigFromPublicCarouselData() {
        ConfigEntity faceFile = new ConfigEntity();
        faceFile.setId(1L);
        faceFile.setName("faceFile");
        faceFile.setValue("http://localhost:8181/canyinguanli/upload/");

        ConfigEntity banner = new ConfigEntity();
        banner.setId(2L);
        banner.setName("homepageBanner");
        banner.setValue("http://localhost:8080/canyinguanli/upload/banner.jpg");

        PageUtils page = new PageUtils(Arrays.asList(faceFile, banner), 2, 10, 1);
        when(configService.queryPage(anyMap())).thenReturn(page);

        R response = controller.list(new HashMap<>(), new ConfigEntity());

        PageUtils data = (PageUtils) response.get("data");
        assertNotNull(data);
        assertEquals(1, data.getTotal());
        assertEquals(1, data.getList().size());
        assertEquals("homepageBanner", ((ConfigEntity) data.getList().get(0)).getName());
    }
}
