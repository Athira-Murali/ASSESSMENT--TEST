
class HomeModel {
    dynamic dtVisibility;
    List<DtContent> dtContent;
    List<Dt> dtMonthlyStat;
    List<DtObsCount> dtObsCount;
    List<dynamic> dtCompPerc;
    List<DtAbstract> dtAbstract;
    List<DtImage> dtImage;
    List<DtPerformance> dtPerformance;
    dynamic dtFrequency;
    List<DtSafetyTip> dtSafetyTips;
    dynamic dtDeptActions;
    dynamic dtPendingAction;
    List<Dt> dtTarget;
    List<DtMvif> dtMvif;
    List<DtLagg> dtLagg;
    List<DtLead> dtLead;
    List<DtPerfTrcf> dtPerfTrcf;

    HomeModel({
        required this.dtVisibility,
        required this.dtContent,
        required this.dtMonthlyStat,
        required this.dtObsCount,
        required this.dtCompPerc,
        required this.dtAbstract,
        required this.dtImage,
        required this.dtPerformance,
        required this.dtFrequency,
        required this.dtSafetyTips,
        required this.dtDeptActions,
        required this.dtPendingAction,
        required this.dtTarget,
        required this.dtMvif,
        required this.dtLagg,
        required this.dtLead,
        required this.dtPerfTrcf,
    });

    factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        dtVisibility: json["dtVisibility"],
        dtContent: List<DtContent>.from(json["dtContent"].map((x) => DtContent.fromJson(x))),
        dtMonthlyStat: List<Dt>.from(json["dtMonthlyStat"].map((x) => Dt.fromJson(x))),
        dtObsCount: List<DtObsCount>.from(json["dtObsCount"].map((x) => DtObsCount.fromJson(x))),
        dtCompPerc: List<dynamic>.from(json["dtCompPerc"].map((x) => x)),
        dtAbstract: List<DtAbstract>.from(json["dtAbstract"].map((x) => DtAbstract.fromJson(x))),
        dtImage: List<DtImage>.from(json["dtImage"].map((x) => DtImage.fromJson(x))),
        dtPerformance: List<DtPerformance>.from(json["dtPerformance"].map((x) => DtPerformance.fromJson(x))),
        dtFrequency: json["dtFrequency"],
        dtSafetyTips: List<DtSafetyTip>.from(json["dtSafetyTips"].map((x) => DtSafetyTip.fromJson(x))),
        dtDeptActions: json["dtDeptActions"],
        dtPendingAction: json["dtPendingAction"],
        dtTarget: List<Dt>.from(json["dtTarget"].map((x) => Dt.fromJson(x))),
        dtMvif: List<DtMvif>.from(json["dtMVIF"].map((x) => DtMvif.fromJson(x))),
        dtLagg: List<DtLagg>.from(json["dtLagg"].map((x) => DtLagg.fromJson(x))),
        dtLead: List<DtLead>.from(json["dtLead"].map((x) => DtLead.fromJson(x))),
        dtPerfTrcf: List<DtPerfTrcf>.from(json["dtPerfTrcf"].map((x) => DtPerfTrcf.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dtVisibility": dtVisibility,
        "dtContent": List<dynamic>.from(dtContent.map((x) => x.toJson())),
        "dtMonthlyStat": List<dynamic>.from(dtMonthlyStat.map((x) => x.toJson())),
        "dtObsCount": List<dynamic>.from(dtObsCount.map((x) => x.toJson())),
        "dtCompPerc": List<dynamic>.from(dtCompPerc.map((x) => x)),
        "dtAbstract": List<dynamic>.from(dtAbstract.map((x) => x.toJson())),
        "dtImage": List<dynamic>.from(dtImage.map((x) => x.toJson())),
        "dtPerformance": List<dynamic>.from(dtPerformance.map((x) => x.toJson())),
        "dtFrequency": dtFrequency,
        "dtSafetyTips": List<dynamic>.from(dtSafetyTips.map((x) => x.toJson())),
        "dtDeptActions": dtDeptActions,
        "dtPendingAction": dtPendingAction,
        "dtTarget": List<dynamic>.from(dtTarget.map((x) => x.toJson())),
        "dtMVIF": List<dynamic>.from(dtMvif.map((x) => x.toJson())),
        "dtLagg": List<dynamic>.from(dtLagg.map((x) => x.toJson())),
        "dtLead": List<dynamic>.from(dtLead.map((x) => x.toJson())),
        "dtPerfTrcf": List<dynamic>.from(dtPerfTrcf.map((x) => x.toJson())),
    };
}

class DtAbstract {
    String item;
    int count;
    String colour;
    String screenUrl;
    String screenCode;
    String screenTitle;
    String module;
    String? moduleLogo;
    String? moduleLogoNew;
    String moduleRight;

    DtAbstract({
        required this.item,
        required this.count,
        required this.colour,
        required this.screenUrl,
        required this.screenCode,
        required this.screenTitle,
        required this.module,
        required this.moduleLogo,
        required this.moduleLogoNew,
        required this.moduleRight,
    });

    factory DtAbstract.fromJson(Map<String, dynamic> json) => DtAbstract(
        item: json["Item"],
        count: json["Count"],
        colour: json["Colour"],
        screenUrl: json["ScreenUrl"],
        screenCode: json["ScreenCode"],
        screenTitle: json["ScreenTitle"],
        module: json["Module"],
        moduleLogo: json["ModuleLogo"],
        moduleLogoNew: json["ModuleLogoNew"],
        moduleRight: json["ModuleRight"],
    );

    Map<String, dynamic> toJson() => {
        "Item": item,
        "Count": count,
        "Colour": colour,
        "ScreenUrl": screenUrl,
        "ScreenCode": screenCode,
        "ScreenTitle": screenTitle,
        "Module": module,
        "ModuleLogo": moduleLogo,
        "ModuleLogoNew": moduleLogoNew,
        "ModuleRight": moduleRight,
    };
}

class DtContent {
    int contentId;
    String category;
    String? contentType;
    String title;
    String description;
    String contentLink;
    Status status;
    DateTime scheduleFromDate;
    DateTime? scheduleToDate;
    CompanyName companyName;

    DtContent({
        required this.contentId,
        required this.category,
        required this.contentType,
        required this.title,
        required this.description,
        required this.contentLink,
        required this.status,
        required this.scheduleFromDate,
        required this.scheduleToDate,
        required this.companyName,
    });

    factory DtContent.fromJson(Map<String, dynamic> json) => DtContent(
        contentId: json["ContentId"],
        category: json["Category"],
        contentType: json["ContentType"],
        title: json["Title"],
        description: json["Description"],
        contentLink: json["ContentLink"],
        status: statusValues.map[json["Status"]]!,
        scheduleFromDate: DateTime.parse(json["ScheduleFromDate"]),
        scheduleToDate: json["ScheduleToDate"] == null ? null : DateTime.parse(json["ScheduleToDate"]),
        companyName: companyNameValues.map[json["CompanyName"]]!,
    );

    Map<String, dynamic> toJson() => {
        "ContentId": contentId,
        "Category": category,
        "ContentType": contentType,
        "Title": title,
        "Description": description,
        "ContentLink": contentLink,
        "Status": statusValues.reverse[status],
        "ScheduleFromDate": scheduleFromDate.toIso8601String(),
        "ScheduleToDate": scheduleToDate?.toIso8601String(),
        "CompanyName": companyNameValues.reverse[companyName],
    };
}

enum CompanyName {
    PETROINFOTECH_PVT_LTD
}

final companyNameValues = EnumValues({
    "Petroinfotech Pvt Ltd": CompanyName.PETROINFOTECH_PVT_LTD
});

enum Status {
    Y
}

final statusValues = EnumValues({
    "Y": Status.Y
});

class DtImage {
    int displaySequence;
    String imageName;
    int imageId;
    String imagePath;
    int docId;

    DtImage({
        required this.displaySequence,
        required this.imageName,
        required this.imageId,
        required this.imagePath,
        required this.docId,
    });

    factory DtImage.fromJson(Map<String, dynamic> json) => DtImage(
        displaySequence: json["DisplaySequence"],
        imageName: json["ImageName"],
        imageId: json["ImageId"],
        imagePath: json["ImagePath"],
        docId: json["DocId"],
    );

    Map<String, dynamic> toJson() => {
        "DisplaySequence": displaySequence,
        "ImageName": imageName,
        "ImageId": imageId,
        "ImagePath": imagePath,
        "DocId": docId,
    };
}

class DtLagg {
    String dateVal;
    int sortOrder;
    int? anm;
    int? dm;
    int? fac;
    int? fat;
    int? lti;
    int? ltif;
    int? ltift;
    int? mtc;
    int? nmi;
    int? rta;
    int? rtaf;
    int? rwc;
    int? rwdc;
    int? trcf;
    int? trir;
    int? trirt;
    dynamic tt;
    dynamic tot;

    DtLagg({
        required this.dateVal,
        required this.sortOrder,
        required this.anm,
        required this.dm,
        required this.fac,
        required this.fat,
        required this.lti,
        required this.ltif,
        required this.ltift,
        required this.mtc,
        required this.nmi,
        required this.rta,
        required this.rtaf,
        required this.rwc,
        required this.rwdc,
        required this.trcf,
        required this.trir,
        required this.trirt,
        required this.tt,
        required this.tot,
    });

    factory DtLagg.fromJson(Map<String, dynamic> json) => DtLagg(
        dateVal: json["DateVal"],
        sortOrder: json["SortOrder"],
        anm: json["ANM"],
        dm: json["DM"],
        fac: json["FAC"],
        fat: json["FAT"],
        lti: json["LTI"],
        ltif: json["LTIF"],
        ltift: json["LTIFT"],
        mtc: json["MTC"],
        nmi: json["NMI"],
        rta: json["RTA"],
        rtaf: json["RTAF"],
        rwc: json["RWC"],
        rwdc: json["RWDC"],
        trcf: json["TRCF"],
        trir: json["TRIR"],
        trirt: json["TRIRT"],
        tt: json["TT"],
        tot: json["Tot"],
    );

    Map<String, dynamic> toJson() => {
        "DateVal": dateVal,
        "SortOrder": sortOrder,
        "ANM": anm,
        "DM": dm,
        "FAC": fac,
        "FAT": fat,
        "LTI": lti,
        "LTIF": ltif,
        "LTIFT": ltift,
        "MTC": mtc,
        "NMI": nmi,
        "RTA": rta,
        "RTAF": rtaf,
        "RWC": rwc,
        "RWDC": rwdc,
        "TRCF": trcf,
        "TRIR": trir,
        "TRIRT": trirt,
        "TT": tt,
        "Tot": tot,
    };
}

class DtLead {
    String dateVal;
    int sortOrder;
    int? bp;
    int? tri;
    int? tot;

    DtLead({
        required this.dateVal,
        required this.sortOrder,
        required this.bp,
        required this.tri,
        required this.tot,
    });

    factory DtLead.fromJson(Map<String, dynamic> json) => DtLead(
        dateVal: json["DateVal"],
        sortOrder: json["SortOrder"],
        bp: json["BP"],
        tri: json["TRI"],
        tot: json["Tot"],
    );

    Map<String, dynamic> toJson() => {
        "DateVal": dateVal,
        "SortOrder": sortOrder,
        "BP": bp,
        "TRI": tri,
        "Tot": tot,
    };
}

class Dt {
    String statisticMonth;
    int monthVal;
    dynamic ltifTarget;
    int ltif;
    dynamic trcfTarget;
    int trcf;
    int? ltifUnit;

    Dt({
        required this.statisticMonth,
        required this.monthVal,
        required this.ltifTarget,
        required this.ltif,
        required this.trcfTarget,
        required this.trcf,
        this.ltifUnit,
    });

    factory Dt.fromJson(Map<String, dynamic> json) => Dt(
        statisticMonth: json["StatisticMonth"],
        monthVal: json["MONTH_VAL"],
        ltifTarget: json["LTIFTarget"],
        ltif: json["LTIF"],
        trcfTarget: json["TRCFTarget"],
        trcf: json["TRCF"],
        ltifUnit: json["LTIFUnit"],
    );

    Map<String, dynamic> toJson() => {
        "StatisticMonth": statisticMonth,
        "MONTH_VAL": monthVal,
        "LTIFTarget": ltifTarget,
        "LTIF": ltif,
        "TRCFTarget": trcfTarget,
        "TRCF": trcf,
        "LTIFUnit": ltifUnit,
    };
}

class DtMvif {
    String statisticMonth;
    int monthVal;
    dynamic mvifTarget;
    int mvif;
    dynamic rofTarget;
    int rof;
    int mvifUnit;

    DtMvif({
        required this.statisticMonth,
        required this.monthVal,
        required this.mvifTarget,
        required this.mvif,
        required this.rofTarget,
        required this.rof,
        required this.mvifUnit,
    });

    factory DtMvif.fromJson(Map<String, dynamic> json) => DtMvif(
        statisticMonth: json["StatisticMonth"],
        monthVal: json["MONTH_VAL"],
        mvifTarget: json["MVIFTarget"],
        mvif: json["MVIF"],
        rofTarget: json["ROFTarget"],
        rof: json["ROF"],
        mvifUnit: json["MVIFUnit"],
    );

    Map<String, dynamic> toJson() => {
        "StatisticMonth": statisticMonth,
        "MONTH_VAL": monthVal,
        "MVIFTarget": mvifTarget,
        "MVIF": mvif,
        "ROFTarget": rofTarget,
        "ROF": rof,
        "MVIFUnit": mvifUnit,
    };
}

class DtObsCount {
    String groupName;
    int groupOrder;
    int obsCount;
    String color;

    DtObsCount({
        required this.groupName,
        required this.groupOrder,
        required this.obsCount,
        required this.color,
    });

    factory DtObsCount.fromJson(Map<String, dynamic> json) => DtObsCount(
        groupName: json["GroupName"],
        groupOrder: json["GroupOrder"],
        obsCount: json["ObsCount"],
        color: json["color"],
    );

    Map<String, dynamic> toJson() => {
        "GroupName": groupName,
        "GroupOrder": groupOrder,
        "ObsCount": obsCount,
        "color": color,
    };
}

class DtPerfTrcf {
    int year;
    String attrName;
    double attrValue;

    DtPerfTrcf({
        required this.year,
        required this.attrName,
        required this.attrValue,
    });

    factory DtPerfTrcf.fromJson(Map<String, dynamic> json) => DtPerfTrcf(
        year: json["Year"],
        attrName: json["AttrName"],
        attrValue: json["AttrValue"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "Year": year,
        "AttrName": attrName,
        "AttrValue": attrValue,
    };
}

class DtPerformance {
    String itemDescription;
    String statisticValue;
    String forSplit;

    DtPerformance({
        required this.itemDescription,
        required this.statisticValue,
        required this.forSplit,
    });

    factory DtPerformance.fromJson(Map<String, dynamic> json) => DtPerformance(
        itemDescription: json["ItemDescription"],
        statisticValue: json["StatisticValue"],
        forSplit: json["ForSplit"],
    );

    Map<String, dynamic> toJson() => {
        "ItemDescription": itemDescription,
        "StatisticValue": statisticValue,
        "ForSplit": forSplit,
    };
}

class DtSafetyTip {
    String title;
    String description;
    int status;

    DtSafetyTip({
        required this.title,
        required this.description,
        required this.status,
    });

    factory DtSafetyTip.fromJson(Map<String, dynamic> json) => DtSafetyTip(
        title: json["Title"],
        description: json["Description"],
        status: json["Status"],
    );

    Map<String, dynamic> toJson() => {
        "Title": title,
        "Description": description,
        "Status": status,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
