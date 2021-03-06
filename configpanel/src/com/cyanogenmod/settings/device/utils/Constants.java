/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings.device.utils;

import java.util.HashMap;
import java.util.Map;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class Constants {

    // Preference keys
    public static final String TOUCHSCREEN_PALM_SLEEP_KEY = "touchscreen_palm_sleep";
    public static final String NUBIA_BUTTON_LIGHT_KEY = "nubia_btn_light";

    // Proc nodes
    public static final String TOUCHSCREEN_PALM_SLEEP_NODE = "/data/tp/easy_sleep_palm";

    // prop values
    public static final String NUBIA_BUTTON_LIGHT_PROP = "perist.sy.disablebtn";

    // Proc nodes default values
    public static final boolean TOUCHSCREEN_PALM_SLEEP_DEFAULT = false;
    public static final boolean BUTTON_LIGHT_DEFAULT = false;

    // Holds <preference_key> -> <proc_node> mapping
    public static final Map<String, String> sBooleanNodePreferenceMap = new HashMap<>();
    public static final Map<String, String> sStringNodePreferenceMap = new HashMap<>();

    public static final Map<String, String> sBooleanPropPreferenceMap = new HashMap<>();

    // Holds <preference_key> -> <default_values> mapping
    public static final Map<String, Object> sNodeDefaultMap = new HashMap<>();

    public static final String[] sGesturePrefKeys = {
        TOUCHSCREEN_PALM_SLEEP_KEY,
    };

    public static final String[] sButtonPrefKeys = {
        NUBIA_BUTTON_LIGHT_KEY,
    };

    static {
        sBooleanNodePreferenceMap.put(TOUCHSCREEN_PALM_SLEEP_KEY, TOUCHSCREEN_PALM_SLEEP_NODE);

	sBooleanPropPreferenceMap.put(NUBIA_BUTTON_LIGHT_KEY, NUBIA_BUTTON_LIGHT_PROP);

        sNodeDefaultMap.put(TOUCHSCREEN_PALM_SLEEP_KEY, TOUCHSCREEN_PALM_SLEEP_DEFAULT);

        sNodeDefaultMap.put(NUBIA_BUTTON_LIGHT_KEY, BUTTON_LIGHT_DEFAULT);
    }

    public static boolean isPreferenceEnabled(Context context, String key) {
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
        return preferences.getBoolean(key, (Boolean) sNodeDefaultMap.get(key));
    }

    public static String getPreferenceString(Context context, String key) {
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
        return preferences.getString(key, (String) sNodeDefaultMap.get(key));
    }
}
