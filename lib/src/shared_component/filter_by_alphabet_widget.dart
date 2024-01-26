import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

final alphabetList =
    List.generate(26, (index) => String.fromCharCode(index + 65));

const totalPages = 4;
const range = [
  [0, 7],
  [7, 14],
  [14, 21],
  [21, 26]
];

final borderRadius = BorderRadius.all(Radius.circular(5.r));

class FilterByAlphabetWidget extends StatelessWidget {
  const FilterByAlphabetWidget({
    super.key,
    required this.selectedFilterLetterProvider,
    required this.pagePaginationFilterLetterProvider,
  });

  final AutoDisposeStateProvider<String?> selectedFilterLetterProvider;
  final AutoDisposeStateProvider<int> pagePaginationFilterLetterProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonNextPrevWidget(
          isNext: false,
          pagePaginationFilterLetterProvider:
              pagePaginationFilterLetterProvider,
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Consumer(builder: (context, consRef, child) {
            final pagePagination =
                consRef.watch(pagePaginationFilterLetterProvider);
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: alphabetList
                  .getRange(range[pagePagination - 1][0],
                      range[pagePagination - 1][1])
                  .map(
                (e) {
                  return ButtonLetterWidget(
                    letter: e,
                    selectedFilterLetterProvider: selectedFilterLetterProvider,
                  );
                },
              ).toList(),
            );
          }),
        ),
        SizedBox(width: 8.w),
        ButtonNextPrevWidget(
          isNext: true,
          pagePaginationFilterLetterProvider:
              pagePaginationFilterLetterProvider,
        ),
      ],
    );
  }
}

class ButtonNextPrevWidget extends ConsumerWidget {
  const ButtonNextPrevWidget({
    super.key,
    required this.isNext,
    required this.pagePaginationFilterLetterProvider,
  });
  final bool isNext;
  final AutoDisposeStateProvider<int> pagePaginationFilterLetterProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pagePagination = ref.watch(pagePaginationFilterLetterProvider);

    return Material(
      child: Ink(
        height: 32.sp,
        width: 32.sp,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.all(
            color: !isNext
                ? pagePagination > 1
                    ? Colors.transparent
                    : ColorTheme.textLightDark
                : pagePagination < totalPages
                    ? Colors.transparent
                    : ColorTheme.textLightDark,
          ),
          color: !isNext
              ? pagePagination > 1
                  ? ColorTheme.primary500
                  : Colors.white
              : pagePagination < totalPages
                  ? ColorTheme.primary500
                  : Colors.white,
        ),
        child: InkWell(
          onTap: isNext
              ? pagePagination < totalPages
                  ? () {
                      ref
                          .read(pagePaginationFilterLetterProvider.notifier)
                          .state++;
                    }
                  : null
              : pagePagination > 1
                  ? () {
                      ref
                          .read(pagePaginationFilterLetterProvider.notifier)
                          .state--;
                    }
                  : null,
          borderRadius: borderRadius,
          child: Icon(
            !isNext ? Icons.chevron_left_rounded : Icons.chevron_right_rounded,
            size: 16.sp,
            color: !isNext
                ? pagePagination > 1
                    ? Colors.white
                    : ColorTheme.textLightDark
                : pagePagination < totalPages
                    ? Colors.white
                    : ColorTheme.textLightDark,
          ),
        ),
      ),
    );
  }
}

class ButtonLetterWidget extends ConsumerWidget {
  const ButtonLetterWidget({
    super.key,
    required this.letter,
    required this.selectedFilterLetterProvider,
  });

  final String letter;
  final AutoDisposeStateProvider<String?> selectedFilterLetterProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(selectedFilterLetterProvider.notifier).state = letter;
      },
      borderRadius: borderRadius,
      child: Container(
        height: 32.sp,
        width: 32.sp,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.all(
            color: ref.watch(selectedFilterLetterProvider) == letter
                ? ColorTheme.primary500
                : ColorTheme.strokeTertiary,
          ),
        ),
        alignment: Alignment.center,
        child: SharedComponent.label(
            text: letter,
            context: context,
            color: ref.watch(selectedFilterLetterProvider) == letter
                ? ColorTheme.primary500
                : ColorTheme.textLightDark,
            typographyType: TypographyType.small),
      ),
    );
  }
}
