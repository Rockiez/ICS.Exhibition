using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ICS.Acquisition;

namespace ICS.Exhibition
{
    public static class Global
    {
        public static ADAM4150 ADAM4150Provider
        {
            get { return (ADAM4150) ClassFactory.GetProvider(equipmentCategory.ADAM4150, ComSetting); }
        }

        public static ICS.Models.Com.ComSettingModel _ComSetting;

        public static ICS.Models.Com.ComSettingModel ComSetting
        {
            get
            {
                if (_ComSetting == null)
                {
                    _ComSetting = new ICS.Common.SettingHelper<ICS.Models.Com.ComSettingModel>().GetSetting();
                    _ComSetting.DigitalQuantityCom = "Com2";
                    _ComSetting.AnalogQuantityCom = "Com2";
                }
                return _ComSetting;
            }
        }
    }
}
