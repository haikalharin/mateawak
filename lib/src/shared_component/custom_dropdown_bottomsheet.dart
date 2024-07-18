import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/features/growth/domain/group_response.remote.dart';
import 'package:module_etamkawa/src/shared_component/radio_item.dart';
import 'package:module_shared/module_shared.dart';

class CustomDropDownBottomSheet extends StatefulWidget {
  const CustomDropDownBottomSheet({
    Key? key,
    required this.groupItems,
    this.missionItems,
    required this.hint,
    this.onPickedGroup,
    this.onPickedMission,
    required this.title,
    this.value,
    this.isGroup = true,
    this.isEnable = true,
  }) : super(key: key);

  final GroupResponseRemote? value;
  final List<GroupResponseRemote> groupItems;
  final List<MissionFilterDatum>? missionItems;
  final String hint;
  final Function(GroupResponseRemote)? onPickedGroup;
  final Function(MissionFilterDatum)? onPickedMission;
  final String title;
  final bool isGroup;
  final bool isEnable;

  @override
  State<CustomDropDownBottomSheet> createState() =>
      _CustomDropDownBottomSheetState();
}

class _CustomDropDownBottomSheetState extends State<CustomDropDownBottomSheet> {
  GroupResponseRemote? selectedValue;
  List<GroupResponseRemote> filteredItems = [];
  late ValueNotifier<GroupResponseRemote?> tempSelectedValueNotifier;
  MissionFilterDatum? selectedMissionValue;
  List<MissionFilterDatum> filteredMissionItems = [];
  late ValueNotifier<MissionFilterDatum?> tempSelectedMissionValueNotifier;

  @override
  void initState() {
    super.initState();
    if (widget.isGroup) {
      filteredItems =
          widget.groupItems; // Initialize filteredItems with widget.items
      if (widget.value != null) {
        setState(() {
          selectedValue = widget.value;
        });
      }
      tempSelectedValueNotifier =
          ValueNotifier<GroupResponseRemote?>(selectedValue);
    } else {
      filteredMissionItems =
          widget.missionItems!; // Initialize filteredItems with widget.items
      if (widget.value != null) {
        setState(() {
          selectedMissionValue = MissionFilterDatum(missionName: 'All');
        });
      }
      tempSelectedMissionValueNotifier =
          ValueNotifier<MissionFilterDatum?>(selectedMissionValue);
    }
  }

  void _openBottomSheet(BuildContext context) {
    if (widget.isGroup){
    tempSelectedValueNotifier.value = GroupResponseRemote();} else {
      tempSelectedMissionValueNotifier.value = MissionFilterDatum();
    }
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.8, // 80% of screen height
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(12.sp),
                  height: 4.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    color: ColorTheme.strokeTertiary,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 4.0),
                child: Text(
                  'Filter ${widget.title}',
                  style: SharedComponent.textStyleCustom(
                      typographyType: TypographyType.largeH5,
                      fontColor: ColorTheme.neutral600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.sp),
                child: TextFormField(
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.sp),
                    hintText: "${EtamKawaTranslate.search}...",
                    hintStyle: SharedComponent.textStyleCustom(
                      typographyType: TypographyType.body,
                      fontColor: ColorTheme.neutral400,
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 16,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    filled: true, // Enable filled property
                    fillColor:
                        Colors.white, // Set the background color to white
                  ),
                  onChanged: (keyword) {
                    setState(() {
                      widget.isGroup ?
                      filteredItems = widget.groupItems
                          .where((item) => item.groupName!
                              .toLowerCase()
                              .contains(keyword.toLowerCase()))
                          .toList()
                          : filteredMissionItems = widget.missionItems!
                          .where((item) => item.missionName!
                              .toLowerCase()
                              .contains(keyword.toLowerCase()))
                          .toList(); 
                    });
                  },
                ),
              ),
              SizedBox(height: 8.h), // Added SizedBox
              Expanded(
                child: widget.isGroup
                    ? ListView(
                        children: filteredItems.map((GroupResponseRemote item) {
                          return Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
                            child: ValueListenableBuilder<GroupResponseRemote?>(
                              valueListenable: tempSelectedValueNotifier,
                              builder: (context, value, child) {
                                return RadioItem(
                                  isMission: !widget.isGroup,
                                  title: item.groupName!,
                                  value: item.groupId.toString(),
                                  isSelected: item == value,
                                  onTap: () {
                                    tempSelectedValueNotifier.value = item;
                                  },
                                );
                              },
                            ),
                          );
                        }).toList(),
                      )
                    : ListView(
                        children:
                            filteredMissionItems.map((MissionFilterDatum item) {
                          return Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
                            child: ValueListenableBuilder<MissionFilterDatum?>(
                              valueListenable: tempSelectedMissionValueNotifier,
                              builder: (context, value, child) {
                                return RadioItem(
                                  isMission: !widget.isGroup,
                                  title: item.missionName!,
                                  title2: item.profileName,
                                  value: item.missionId.toString(),
                                  isSelected: item == value,
                                  onTap: () {
                                    tempSelectedMissionValueNotifier.value =
                                        item;
                                  },
                                );
                              },
                            ),
                          );
                        }).toList(),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SharedComponent.btnWidget(
                        label: EtamKawaTranslate.cancel,
                        typographyType: TypographyType.body,
                        color: ColorTheme.neutral200,
                        fontColor: ColorTheme.neutral600,
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        radius: 5.r,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: widget.isGroup
                          ? ValueListenableBuilder<GroupResponseRemote?>(
                              valueListenable: tempSelectedValueNotifier,
                              builder: (context, value, child) {
                                return SharedComponent.btnWidget(
                                  label: EtamKawaTranslate.apply,
                                  typographyType: TypographyType.body,
                                  color: value?.groupId == null
                                      ? ColorTheme.primary200
                                      : ColorTheme.primary500,
                                  onPressed: () {
                                    if (value?.groupId != null) {
                                      widget.onPickedGroup!(value!);
                                      setState(() {
                                        selectedValue = value;
                                      });
                                      Navigator.pop(context);
                                    }
                                  },
                                  radius: 5.r,
                                );
                              },
                            )
                          : ValueListenableBuilder<MissionFilterDatum?>(
                              valueListenable: tempSelectedMissionValueNotifier,
                              builder: (context, value, child) {
                                return SharedComponent.btnWidget(
                                  label: EtamKawaTranslate.apply,
                                  typographyType: TypographyType.body,
                                  color: value?.missionId == null
                                      ? ColorTheme.primary200
                                      : ColorTheme.primary500,
                                  onPressed: () {
                                    if (value?.missionId != null) {
                                      widget.onPickedMission!(value!);
                                      setState(() {
                                        selectedMissionValue = value;
                                      });
                                      Navigator.pop(context);
                                    }
                                  },
                                  radius: 5.r,
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isEnable ? () => _openBottomSheet(context) : null,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: Colors.white, // Added white background color
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: ColorTheme.strokeTertiary),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              // Added Expanded
              child: Text(
                selectedValue?.groupName ?? widget.hint,
                overflow: TextOverflow.ellipsis, // Added ellipsis
                style: SharedComponent.textStyleCustom(
                  typographyType: TypographyType.body,
                  fontColor: widget.isEnable
                      ? ColorTheme.neutral600
                      : ColorTheme.neutral400,
                ),
              ),
            ),
            Icon(Icons.keyboard_arrow_down_sharp,
                color: widget.isEnable
                    ? ColorTheme.neutral600
                    : ColorTheme.neutral400),
          ],
        ),
      ),
    );
  }
}
