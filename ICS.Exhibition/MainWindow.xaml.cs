using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using ICS.Acquisition;
using ICS.Models;
using ICS.Common;
using ICS.Models.Com;

namespace ICS.Exhibition
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void minbottor(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
            
        }

        private void Closebotter(object sender, RoutedEventArgs e)
        {
            if (MessageBoxResult.Yes !=
                MessageBox.Show("你确定要退出？", "退出", MessageBoxButton.YesNo, MessageBoxImage.Asterisk)) return;
            Close();
        }

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            var exHelper = new ExhibitionHelper(exhibitionLight, catchThief, policemen, haveThief, this, imgDoor.Name, imgDoor.Name);

            LazyTimer timer = new LazyTimer(_sender =>
            {
                LazyTimer t = (LazyTimer)_sender[0];
                var statevalue = new ADAM4150(new ComSettingModel());
                if (statevalue.CheckSerialPort(statevalue.ADAM4017Provider).Status ==
                    RunStatus.Failure) return;

                Application.Current.Dispatcher.Invoke(() =>
                {
                    exHelper.OpenAlarm(statevalue.infraredValue);
                });
                t.Reset();
            }, 100, 5000);

            }
    }
}
