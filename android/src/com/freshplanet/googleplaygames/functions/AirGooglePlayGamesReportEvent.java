package com.freshplanet.googleplaygames.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.freshplanet.googleplaygames.Extension;


public class AirGooglePlayGamesReportEvent implements FREFunction {

    @Override
    public FREObject call(FREContext arg0, FREObject[] arg1) {
        String eventId = null;
        int incrementAmount = 0;
        try
        {
            eventId = arg1[0].getAsString();
            incrementAmount = arg1[1].getAsInt();
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }
        Extension.context.createHelperIfNeeded(arg0.getActivity());
        Extension.context.reportEvent(eventId, incrementAmount);
		return null;
    }

}