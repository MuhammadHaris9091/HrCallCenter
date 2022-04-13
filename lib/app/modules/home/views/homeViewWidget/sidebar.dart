import 'package:flutter/material.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/route/route_name.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/services/locator.dart';
import 'package:hr_call_center_bpo/app/modules/home/views/services/navigation_service.dart';


class Sidebar extends StatefulWidget{
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int _selectedIndex = 0;

  _onSelected(int index) {
     _selectedIndex = index;
  }


  bool isHovering0 = false;
  bool isHovering1 = false;
  bool isHovering2 = false;
  bool isHovering3 = false;
  bool isHovering4 = false;
  bool isHovering5 = false;
  bool isHovering6 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff95ccf9),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 60,
              child: CircleAvatar(
                child: Image.asset('images/hrIcon.webp'),
              ),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            const Icon(Icons.home),

            /// Accounts
            InkWell(
              onTap: () {
                _onSelected(0);

                locator<NavigationServices>().navigateTo(toAccounts);

              },
              onHover: (hovering) {
                setState(() => isHovering0 = hovering);
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == 0
                        ? Colors.indigoAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                  dashboard(context, Icons.apps, 'Accounts', isHovering0)),
            ),

            ///Sales
            InkWell(
              onTap: () {
                _onSelected(1);
                locator<NavigationServices>().navigateTo(toSales);
              },
              onHover: (hovering) {
                setState(() => isHovering1 = hovering);
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1
                        ? Colors.indigoAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: dashboard(
                      context, Icons.point_of_sale, 'Sales', isHovering1)),
            ),

            ///Human
            InkWell(
              onTap: () {
                _onSelected(2);
                locator<NavigationServices>().navigateTo(toHuman);
              },
              onHover: (hovering) {
                setState(() => isHovering2 = hovering);
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == 2
                        ? Colors.indigoAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: dashboard(
                      context, Icons.person_pin_sharp, 'Human', isHovering2)),
            ),

            ///Project
            InkWell(
              onTap: () {
                _onSelected(3);
                locator<NavigationServices>().navigateTo(toProject);
              },
              onHover: (hovering) {
                setState(() => isHovering3 = hovering);
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == 3
                        ? Colors.indigoAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                  dashboard(context, Icons.apps, 'Project', isHovering3)),
            ),

            ///Payroll
            InkWell(
              onTap: () {
                _onSelected(4);
                locator<NavigationServices>().navigateTo(toPayroll);
              },
              onHover: (hovering) {
                setState(() => isHovering4 = hovering);
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == 4
                        ? Colors.indigoAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                  dashboard(context, Icons.paypal, 'Payroll', isHovering4)),
            ),

            ///Reports
            InkWell(
              onTap: () {
                _onSelected(5);
                locator<NavigationServices>().navigateTo(toReport);
              },
              onHover: (hovering) {
                setState(() => isHovering5 = hovering);
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == 5
                        ? Colors.indigoAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: dashboard(context, Icons.signal_cellular_alt_rounded,
                      'Reports', isHovering5)),
            ),

            ///Docs
            InkWell(
              onTap: () {
                _onSelected(6);
                locator<NavigationServices>().navigateTo(toDocs);
              },
              onHover: (hovering) {
                setState(() => isHovering6 = hovering);
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: _selectedIndex == 6
                        ? Colors.indigoAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: dashboard(context, Icons.apps, 'Docs', isHovering6)),
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context, icon, text, hovering) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
      padding: EdgeInsets.all(hovering ? 18 : 15),
      decoration: BoxDecoration(
        color: hovering ? Colors.indigoAccent : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 35,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
