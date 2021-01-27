import 'package:flutter/material.dart';
import 'package:gtnm_hci/danh_sach_view/danh_sach_yeu_cau_view.dart';
import 'package:gtnm_hci/danh_sach_view/danh_sach_don_mua_hang_view.dart';
import 'package:gtnm_hci/lich_view/lich_view.dart';
import 'package:gtnm_hci/tao_moi_yeu_cau_khach_hang_view/tao_moi_yeu_cau_khach_hang_view.dart';
import 'package:gtnm_hci/moi_chao_gia_view/moi_chao_gia_view.dart';

const String initialRoute = "dsyeucau";

class router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'dsyeucau':
        return MaterialPageRoute(builder: (_) => DanhSachYeuCauView());
      case 'dsdonmuahang':
        return MaterialPageRoute(builder: (_) => DanhSachDonMuaHangView());
      case 'lich':
        return MaterialPageRoute(builder: (_) => LichView());
      case 'chaogia':
        return MaterialPageRoute(builder: (_) => MoiChaoGiaWidget());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
