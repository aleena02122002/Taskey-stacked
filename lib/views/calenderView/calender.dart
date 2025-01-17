import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:taskey/views/calenderView/calender_viewmodel.dart';

class CalenderView extends StatelessWidget {
  const CalenderView({super.key});

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CalenderViewmodel(),
        builder: (context, viewmodel, index) {

          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text(
                "Monthly Task",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 21),
              ),
              titleSpacing: 60,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, color: Colors.white)),
              ],
            ),
            body: Column(
              children: [
                _dateTimeBar(),
                _datePicker(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                  child: Container(

                    child: TableCalendar(
                      selectedDayPredicate: (day)=>isSameDay(day, viewmodel.today),
                      onDaySelected: viewmodel.ondaySelected,
                        rowHeight: 70,
                          calendarFormat: CalendarFormat.month,
                          headerStyle: const HeaderStyle(
                            titleCentered: true,
                              leftChevronIcon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              rightChevronIcon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              formatButtonVisible: false,
                              titleTextStyle: TextStyle(color: Color(0xFF3580FF),fontSize: 18,fontWeight: FontWeight.w600)),

                          calendarStyle: CalendarStyle(
                            selectedDecoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueAccent,
                              ),
                              shape: BoxShape.circle,
                            ),
                            todayDecoration: BoxDecoration(
                              color:
                                  Colors.blueAccent, // Customize today's date color
                              shape: BoxShape.circle,
                            ),
                            isTodayHighlighted: true,
                            defaultTextStyle: TextStyle(color: Colors.white),
                            weekendTextStyle: TextStyle(color: Colors.white),
                            weekNumberTextStyle: TextStyle(color: Colors.white),
                          ),
                          focusedDay: DateTime.now(),
                          firstDay: DateTime.utc(1950, 01, 01),
                          lastDay: DateTime.utc(2050, 12, 31)),

                  ),
                )
              ],
            ),
          );

        });
  }

  Widget _dateTimeBar() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
          child: Text(
            "${DateFormat.yMMMMd().format(DateTime.now())} ✍",
            style: const TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(width: 90),
        Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
                color: const Color(0xFF3580FF),
                borderRadius: BorderRadius.circular(20)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                ))),
      ],
    );
  }


  Widget _datePicker() {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: DatePicker(
        DateTime.now(),
        height: 118,
        width: 50,
        initialSelectedDate: DateTime.now(),
        selectedTextColor: Colors.white,
        selectionColor: const Color(0xFF3580FF),
        dateTextStyle: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF848A94)),
        dayTextStyle: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xFF848A94)),
        monthTextStyle: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xFF848A94)),
      ),
    );
  }


}
