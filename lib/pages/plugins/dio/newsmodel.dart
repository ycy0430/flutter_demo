class news {
  String sourceId;
  String template;
  int upTimes;
  String lmodify;
  String source;
  String postid;
  String title;
  String mtime;
  int hasImg;
  String topicid;
  String topicBackground;
  String digest;
  String boardid;
  String alias;
  int hasAD;
  String imgsrc;
  String ptime;
  String daynum;
  String extraShowFields;
  int hasHead;
  int order;
  int votecount;
  bool hasCover;
  String docid;
  String tname;
  String url3w;
  int priority;
  String url;
  int quality;
  int commentStatus;
  String ename;
  int replyCount;
  String ltitle;
  bool hasIcon;
  String subtitle;
  String cid;

  news(
      {this.sourceId,
        this.template,
        this.upTimes,
        this.lmodify,
        this.source,
        this.postid,
        this.title,
        this.mtime,
        this.hasImg,
        this.topicid,
        this.topicBackground,
        this.digest,
        this.boardid,
        this.alias,
        this.hasAD,
        this.imgsrc,
        this.ptime,
        this.daynum,
        this.extraShowFields,
        this.hasHead,
        this.order,
        this.votecount,
        this.hasCover,
        this.docid,
        this.tname,
        this.url3w,
        this.priority,
        this.url,
        this.quality,
        this.commentStatus,
        this.ename,
        this.replyCount,
        this.ltitle,
        this.hasIcon,
        this.subtitle,
        this.cid});

  news.fromJson(Map<String, dynamic> json) {
    sourceId = json['sourceId'];
    template = json['template'];
    upTimes = json['upTimes'];
    lmodify = json['lmodify'];
    source = json['source'];
    postid = json['postid'];
    title = json['title'];
    mtime = json['mtime'];
    hasImg = json['hasImg'];
    topicid = json['topicid'];
    topicBackground = json['topic_background'];
    digest = json['digest'];
    boardid = json['boardid'];
    alias = json['alias'];
    hasAD = json['hasAD'];
    imgsrc = json['imgsrc'];
    ptime = json['ptime'];
    daynum = json['daynum'];
    extraShowFields = json['extraShowFields'];
    hasHead = json['hasHead'];
    order = json['order'];
    votecount = json['votecount'];
    hasCover = json['hasCover'];
    docid = json['docid'];
    tname = json['tname'];
    url3w = json['url_3w'];
    priority = json['priority'];
    url = json['url'];
    quality = json['quality'];
    commentStatus = json['commentStatus'];
    ename = json['ename'];
    replyCount = json['replyCount'];
    ltitle = json['ltitle'];
    hasIcon = json['hasIcon'];
    subtitle = json['subtitle'];
    cid = json['cid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sourceId'] = this.sourceId;
    data['template'] = this.template;
    data['upTimes'] = this.upTimes;
    data['lmodify'] = this.lmodify;
    data['source'] = this.source;
    data['postid'] = this.postid;
    data['title'] = this.title;
    data['mtime'] = this.mtime;
    data['hasImg'] = this.hasImg;
    data['topicid'] = this.topicid;
    data['topic_background'] = this.topicBackground;
    data['digest'] = this.digest;
    data['boardid'] = this.boardid;
    data['alias'] = this.alias;
    data['hasAD'] = this.hasAD;
    data['imgsrc'] = this.imgsrc;
    data['ptime'] = this.ptime;
    data['daynum'] = this.daynum;
    data['extraShowFields'] = this.extraShowFields;
    data['hasHead'] = this.hasHead;
    data['order'] = this.order;
    data['votecount'] = this.votecount;
    data['hasCover'] = this.hasCover;
    data['docid'] = this.docid;
    data['tname'] = this.tname;
    data['url_3w'] = this.url3w;
    data['priority'] = this.priority;
    data['url'] = this.url;
    data['quality'] = this.quality;
    data['commentStatus'] = this.commentStatus;
    data['ename'] = this.ename;
    data['replyCount'] = this.replyCount;
    data['ltitle'] = this.ltitle;
    data['hasIcon'] = this.hasIcon;
    data['subtitle'] = this.subtitle;
    data['cid'] = this.cid;
    return data;
  }
}