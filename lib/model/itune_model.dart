/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/ 
class ItuneModel {
  Feed? feed;

  ItuneModel({this.feed});

  ItuneModel.fromJson(Map<String, dynamic> json) {
    feed = json['feed'] != null ? new Feed.fromJson(json['feed']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.feed != null) {
      data['feed'] = this.feed!.toJson();
    }
    return data;
  }
}


class Attributes {
    String? height;
    String? rel;
    String? type;
    String? href;
    String? amount;
    String? currency;
    String? term;
    String? label;
    String? imid;
    String? scheme;

    Attributes({this.height, this.rel, this.type, this.href, this.amount, this.currency, this.term, this.label, this.imid, this.scheme}); 

    Attributes.fromJson(Map<String, dynamic> json) {
        height = json['height'];
        rel = json['rel'];
        type = json['type'];
        href = json['href'];
        amount = json['amount'];
        currency = json['currency'];
        term = json['term'];
        label = json['label'];
        imid = json['im:id'];
        scheme = json['scheme'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['height'] = height;
        data['rel'] = rel;
        data['type'] = type;
        data['href'] = href;
        data['amount'] = amount;
        data['currency'] = currency;
        data['term'] = term;
        data['label'] = label;
        data['im:id'] = imid;
        data['scheme'] = scheme;
        return data;
    }
}

class Author {
    Name? name;
    Url? uri;

    Author({this.name, this.uri}); 

    Author.fromJson(Map<String, dynamic> json) {
        name = json['name'] != null ? Name?.fromJson(json['name']) : null;
        uri = json['uri'] != null ? Url?.fromJson(json['uri']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['name'] = name!.toJson();
        data['uri'] = uri!.toJson();
        return data;
    }
}

class Category {
    Attributes? attributes;

    Category({this.attributes}); 

    Category.fromJson(Map<String, dynamic> json) {
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class Entry {
    ImName? imname;
    List<ImImage?>? imimage;
    ImItemCount? imitemCount;
    ImPrice? imprice;
    ImContentType? imcontentType;
    Rights? rights;
    Title? title;
    Link? link;
    Id? id;
    ImArtist? imartist;
    Category? category;
    ImReleaseDate? imreleaseDate;

    Entry({this.imname, this.imimage, this.imitemCount, this.imprice, this.imcontentType, this.rights, this.title, this.link, this.id, this.imartist, this.category, this.imreleaseDate}); 

    Entry.fromJson(Map<String, dynamic> json) {
        imname = json['im:name'] != null ? ImName?.fromJson(json['im:name']) : null;
        if (json['im:image'] != null) {
         imimage = <ImImage>[];
         json['im:image'].forEach((v) {
         imimage!.add(ImImage.fromJson(v));
        });
      }
        imitemCount = json['im:itemCount'] != null ? ImItemCount?.fromJson(json['im:itemCount']) : null;
        imprice = json['im:price'] != null ? ImPrice?.fromJson(json['im:price']) : null;
        imcontentType = json['im:contentType'] != null ? ImContentType?.fromJson(json['im:contentType']) : null;
        rights = json['rights'] != null ? Rights?.fromJson(json['rights']) : null;
        title = json['title'] != null ? Title?.fromJson(json['title']) : null;
        link = json['link'] != null ? Link?.fromJson(json['link']) : null;
        id = json['id'] != null ? Id?.fromJson(json['id']) : null;
        imartist = json['im:artist'] != null ? ImArtist?.fromJson(json['im:artist']) : null;
        category = json['category'] != null ? Category?.fromJson(json['category']) : null;
        imreleaseDate = json['im:releaseDate'] != null ? ImReleaseDate?.fromJson(json['im:releaseDate']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['im:name'] = imname!.toJson();
        data['im:image'] =imimage != null ? imimage!.map((v) => v?.toJson()).toList() : null;
        data['im:itemCount'] = imitemCount!.toJson();
        data['im:price'] = imprice!.toJson();
        data['im:contentType'] = imcontentType!.toJson();
        data['rights'] = rights!.toJson();
        data['title'] = title!.toJson();
        data['link'] = link!.toJson();
        data['id'] = id!.toJson();
        data['im:artist'] = imartist!.toJson();
        data['category'] = category!.toJson();
        data['im:releaseDate'] = imreleaseDate!.toJson();
        return data;
    }
}

class Feed {
    Author? author;
    List<Entry?>? entry;
    Updated? updated;
    Rights? rights;
    Title? title;
    ModelIcon? icon;
    List<Link?>? link;
    Id? id;

    Feed({this.author, this.entry, this.updated, this.rights, this.title, this.icon, this.link, this.id}); 

    Feed.fromJson(Map<String, dynamic> json) {
        author = json['author'] != null ? Author?.fromJson(json['author']) : null;
        if (json['entry'] != null) {
         entry = <Entry>[];
         json['entry'].forEach((v) {
         entry!.add(Entry.fromJson(v));
        });
      }
        updated = json['updated'] != null ? Updated?.fromJson(json['updated']) : null;
        rights = json['rights'] != null ? Rights?.fromJson(json['rights']) : null;
        title = json['title'] != null ? Title?.fromJson(json['title']) : null;
        icon = json['icon'] != null ? ModelIcon?.fromJson(json['icon']) : null;
        if (json['link'] != null) {
         link = <Link>[];
         json['link'].forEach((v) {
         link!.add(Link.fromJson(v));
        });
      }
        id = json['id'] != null ? Id?.fromJson(json['id']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['author'] = author!.toJson();
        data['entry'] =entry != null ? entry!.map((v) => v?.toJson()).toList() : null;
        data['updated'] = updated!.toJson();
        data['rights'] = rights!.toJson();
        data['title'] = title!.toJson();
        data['icon'] = icon!.toJson();
        data['link'] =link != null ? link!.map((v) => v?.toJson()).toList() : null;
        data['id'] = id!.toJson();
        return data;
    }
}

class ModelIcon {
    String? label;

    ModelIcon({this.label}); 

    ModelIcon.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

class Id {
    String? label;
    Attributes? attributes;

    Id({this.label, this.attributes}); 

    Id.fromJson(Map<String, dynamic> json) {
        label = json['label'];
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class ImArtist {
    String? label;
    Attributes? attributes;

    ImArtist({this.label, this.attributes}); 

    ImArtist.fromJson(Map<String, dynamic> json) {
        label = json['label'];
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class ImContentType {
    ImContentType? imcontentType;
    Attributes? attributes;

    ImContentType({this.imcontentType, this.attributes}); 

    ImContentType.fromJson(Map<String, dynamic> json) {
        imcontentType = json['im:contentType'] != null ? ImContentType?.fromJson(json['im:contentType']) : null;
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['im:contentType'] = imcontentType!.toJson();
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class ImImage {
    String? label;
    Attributes? attributes;

    ImImage({this.label, this.attributes}); 

    ImImage.fromJson(Map<String, dynamic> json) {
        label = json['label'];
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class ImItemCount {
    String? label;

    ImItemCount({this.label}); 

    ImItemCount.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

class ImName {
    String? label;

    ImName({this.label}); 

    ImName.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

class ImPrice {
    String? label;
    Attributes? attributes;

    ImPrice({this.label, this.attributes}); 

    ImPrice.fromJson(Map<String, dynamic> json) {
        label = json['label'];
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class ImReleaseDate {
    DateTime? label;
    Attributes? attributes;

    ImReleaseDate({this.label, this.attributes}); 

    ImReleaseDate.fromJson(Map<String, dynamic> json) {
        label = json['label'];
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class Link {
    Attributes? attributes;

    Link({this.attributes}); 

    Link.fromJson(Map<String, dynamic> json) {
        attributes = json['attributes'] != null ? Attributes?.fromJson(json['attributes']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['attributes'] = attributes!.toJson();
        return data;
    }
}

class Name {
    String? label;

    Name({this.label}); 

    Name.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

class Rights {
    String? label;

    Rights({this.label}); 

    Rights.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

class Root {
    Feed? feed;

    Root({this.feed}); 

    Root.fromJson(Map<String, dynamic> json) {
        feed = json['feed'] != null ? Feed?.fromJson(json['feed']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['feed'] = feed!.toJson();
        return data;
    }
}

class Title {
    String? label;

    Title({this.label}); 

    Title.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

class Updated {
    DateTime? label;

    Updated({this.label}); 

    Updated.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

class Url {
    String? label;

    Url({this.label}); 

    Url.fromJson(Map<String, dynamic> json) {
        label = json['label'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['label'] = label;
        return data;
    }
}

