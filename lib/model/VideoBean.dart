import 'dart:convert';

/// code : 0
/// message : "0"
/// ttl : 1
/// data : {"from":"local","result":"suee","message":"","quality":32,"format":"flv480","timelength":257717,"accept_format":"hdflv2,flv,flv720,flv480,mp4","accept_description":["高清 1080P+","高清 1080P","高清 720P","清晰 480P","流畅 360P"],"accept_quality":[112,80,64,32,16],"video_codecid":7,"seek_param":"start","seek_type":"offset","dash":{"duration":258,"minBufferTime":1.5,"min_buffer_time":1.5,"video":[{"id":80,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"],"bandwidth":2621318,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.640032","width":1920,"height":1080,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-991","indexRange":"992-1647"},"segment_base":{"initialization":"0-991","index_range":"992-1647"},"codecid":7},{"id":80,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=228981&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=228981&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=228981&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8b770a2a7205a8a0c4fe804357006908&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=228981&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=228981&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8b770a2a7205a8a0c4fe804357006908&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=228981&logo=40000000"],"bandwidth":1827349,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L150.90","width":1920,"height":1080,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":64,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=219796&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=219796&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=219796&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=18ceab0940674bb710fbccae09a33370&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=219796&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=219796&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=18ceab0940674bb710fbccae09a33370&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=219796&logo=40000000"],"bandwidth":1754048,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.640028","width":1280,"height":720,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-989","indexRange":"990-1645"},"segment_base":{"initialization":"0-989","index_range":"990-1645"},"codecid":7},{"id":64,"baseUrl":"https://xy114x97x80x164xy.mcdn.bilivideo.cn:4483/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=mcdn&oi=1961721642&trid=0001e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=225f20a4c75be84af2b6c24e49dc5273&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&mcdnid=9001181&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=97374&logo=A0000100","base_url":"https://xy114x97x80x164xy.mcdn.bilivideo.cn:4483/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=mcdn&oi=1961721642&trid=0001e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=225f20a4c75be84af2b6c24e49dc5273&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&mcdnid=9001181&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=97374&logo=A0000100","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=97374&logo=40000000","https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=97374&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=97374&logo=40000000","https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=97374&logo=40000000"],"bandwidth":777081,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":1280,"height":720,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":32,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=99071&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=99071&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=99071&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=08f5a40c12b356042b8fa48aba261f8f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=99071&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=99071&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=08f5a40c12b356042b8fa48aba261f8f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=99071&logo=40000000"],"bandwidth":790628,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.64001F","width":852,"height":480,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-990","indexRange":"991-1646"},"segment_base":{"initialization":"0-990","index_range":"991-1646"},"codecid":7},{"id":32,"baseUrl":"https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=60104&logo=80000000","base_url":"https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=60104&logo=80000000","backupUrl":["https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=60104&logo=40000000","https://upos-sz-mirrorcosb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=6a0cb1437a59ce94cb08d867bc529581&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=60104&logo=40000000"],"backup_url":["https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=60104&logo=40000000","https://upos-sz-mirrorcosb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=6a0cb1437a59ce94cb08d867bc529581&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=60104&logo=40000000"],"bandwidth":479658,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":852,"height":480,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":16,"baseUrl":"https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=38818&logo=80000000","base_url":"https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=38818&logo=80000000","backupUrl":["https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=38818&logo=40000000","https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=38818&logo=40000000"],"backup_url":["https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=38818&logo=40000000","https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=38818&logo=40000000"],"bandwidth":309788,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":640,"height":360,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1053","indexRange":"1054-1709"},"segment_base":{"initialization":"0-1053","index_range":"1054-1709"},"codecid":12},{"id":16,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=44274&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=44274&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=44274&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=789c98608daf71627174ae31820a54a4&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=44274&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=44274&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=789c98608daf71627174ae31820a54a4&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=44274&logo=40000000"],"bandwidth":353322,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.64001E","width":640,"height":360,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-998","indexRange":"999-1654"},"segment_base":{"initialization":"0-998","index_range":"999-1654"},"codecid":7}],"audio":[{"id":30280,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"],"bandwidth":121610,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-907","indexRange":"908-1563"},"segment_base":{"initialization":"0-907","index_range":"908-1563"},"codecid":0},{"id":30216,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=8425&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=8425&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=8425&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=ad15fc2485aae5aef0b852080a0b8feb&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=8425&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=8425&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=ad15fc2485aae5aef0b852080a0b8feb&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=8425&logo=40000000"],"bandwidth":67216,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-941","indexRange":"942-1597"},"segment_base":{"initialization":"0-941","index_range":"942-1597"},"codecid":0},{"id":30232,"baseUrl":"https://upos-sz-mirrorali.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30232.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=alibv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8103c3fd1d656b22e6022bded38479e2&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,1&agrr=0&bw=15243&logo=80000000","base_url":"https://upos-sz-mirrorali.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30232.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=alibv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8103c3fd1d656b22e6022bded38479e2&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,1&agrr=0&bw=15243&logo=80000000","backupUrl":null,"backup_url":null,"bandwidth":121610,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-907","indexRange":"908-1563"},"segment_base":{"initialization":"0-907","index_range":"908-1563"},"codecid":0}],"dolby":null},"support_formats":[{"quality":112,"format":"hdflv2","new_description":"1080P 高码率","display_desc":"1080P","superscript":"高码率","codecs":["avc1.640032","hev1.1.6.L150.90"]},{"quality":80,"format":"flv","new_description":"1080P 高清","display_desc":"1080P","superscript":"","codecs":["avc1.640032","hev1.1.6.L150.90"]},{"quality":64,"format":"flv720","new_description":"720P 高清","display_desc":"720P","superscript":"","codecs":["avc1.640028","hev1.1.6.L120.90"]},{"quality":32,"format":"flv480","new_description":"480P 清晰","display_desc":"480P","superscript":"","codecs":["avc1.64001F","hev1.1.6.L120.90"]},{"quality":16,"format":"mp4","new_description":"360P 流畅","display_desc":"360P","superscript":"","codecs":["avc1.64001E","hev1.1.6.L120.90"]}],"high_format":null,"volume":{"measured_i":-8.3,"measured_lra":6.1,"measured_tp":3,"measured_threshold":-18.5,"target_offset":0.5,"target_i":-14,"target_tp":-1}}
/// session : "8e8361afad0982548fbc658ea3634706"

VideoBean videoBeanFromJson(String str) => VideoBean.fromJson(json.decode(str));

String videoBeanToJson(VideoBean data) => json.encode(data.toJson());

class VideoBean {
  VideoBean({
    num? code,
    String? message,
    num? ttl,
    Data? data,
    String? session,
  }) {
    _code = code;
    _message = message;
    _ttl = ttl;
    _data = data;
    _session = session;
  }

  VideoBean.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _ttl = json['ttl'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _session = json['session'];
  }

  num? _code;
  String? _message;
  num? _ttl;
  Data? _data;
  String? _session;

  VideoBean copyWith({
    num? code,
    String? message,
    num? ttl,
    Data? data,
    String? session,
  }) =>
      VideoBean(
        code: code ?? _code,
        message: message ?? _message,
        ttl: ttl ?? _ttl,
        data: data ?? _data,
        session: session ?? _session,
      );

  num? get code => _code;

  String? get message => _message;

  num? get ttl => _ttl;

  Data? get data => _data;

  String? get session => _session;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    map['ttl'] = _ttl;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['session'] = _session;
    return map;
  }
}

/// from : "local"
/// result : "suee"
/// message : ""
/// quality : 32
/// format : "flv480"
/// timelength : 257717
/// accept_format : "hdflv2,flv,flv720,flv480,mp4"
/// accept_description : ["高清 1080P+","高清 1080P","高清 720P","清晰 480P","流畅 360P"]
/// accept_quality : [112,80,64,32,16]
/// video_codecid : 7
/// seek_param : "start"
/// seek_type : "offset"
/// dash : {"duration":258,"minBufferTime":1.5,"min_buffer_time":1.5,"video":[{"id":80,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"],"bandwidth":2621318,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.640032","width":1920,"height":1080,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-991","indexRange":"992-1647"},"segment_base":{"initialization":"0-991","index_range":"992-1647"},"codecid":7},{"id":80,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=228981&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=228981&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=228981&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8b770a2a7205a8a0c4fe804357006908&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=228981&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=228981&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8b770a2a7205a8a0c4fe804357006908&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=228981&logo=40000000"],"bandwidth":1827349,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L150.90","width":1920,"height":1080,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":64,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=219796&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=219796&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=219796&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=18ceab0940674bb710fbccae09a33370&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=219796&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=219796&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=18ceab0940674bb710fbccae09a33370&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=219796&logo=40000000"],"bandwidth":1754048,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.640028","width":1280,"height":720,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-989","indexRange":"990-1645"},"segment_base":{"initialization":"0-989","index_range":"990-1645"},"codecid":7},{"id":64,"baseUrl":"https://xy114x97x80x164xy.mcdn.bilivideo.cn:4483/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=mcdn&oi=1961721642&trid=0001e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=225f20a4c75be84af2b6c24e49dc5273&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&mcdnid=9001181&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=97374&logo=A0000100","base_url":"https://xy114x97x80x164xy.mcdn.bilivideo.cn:4483/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=mcdn&oi=1961721642&trid=0001e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=225f20a4c75be84af2b6c24e49dc5273&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&mcdnid=9001181&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=97374&logo=A0000100","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=97374&logo=40000000","https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=97374&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=97374&logo=40000000","https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=97374&logo=40000000"],"bandwidth":777081,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":1280,"height":720,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":32,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=99071&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=99071&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=99071&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=08f5a40c12b356042b8fa48aba261f8f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=99071&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=99071&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=08f5a40c12b356042b8fa48aba261f8f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=99071&logo=40000000"],"bandwidth":790628,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.64001F","width":852,"height":480,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-990","indexRange":"991-1646"},"segment_base":{"initialization":"0-990","index_range":"991-1646"},"codecid":7},{"id":32,"baseUrl":"https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=60104&logo=80000000","base_url":"https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=60104&logo=80000000","backupUrl":["https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=60104&logo=40000000","https://upos-sz-mirrorcosb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=6a0cb1437a59ce94cb08d867bc529581&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=60104&logo=40000000"],"backup_url":["https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=60104&logo=40000000","https://upos-sz-mirrorcosb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=6a0cb1437a59ce94cb08d867bc529581&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=60104&logo=40000000"],"bandwidth":479658,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":852,"height":480,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":16,"baseUrl":"https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=38818&logo=80000000","base_url":"https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=38818&logo=80000000","backupUrl":["https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=38818&logo=40000000","https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=38818&logo=40000000"],"backup_url":["https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=38818&logo=40000000","https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=38818&logo=40000000"],"bandwidth":309788,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":640,"height":360,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1053","indexRange":"1054-1709"},"segment_base":{"initialization":"0-1053","index_range":"1054-1709"},"codecid":12},{"id":16,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=44274&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=44274&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=44274&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=789c98608daf71627174ae31820a54a4&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=44274&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=44274&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=789c98608daf71627174ae31820a54a4&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=44274&logo=40000000"],"bandwidth":353322,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.64001E","width":640,"height":360,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-998","indexRange":"999-1654"},"segment_base":{"initialization":"0-998","index_range":"999-1654"},"codecid":7}],"audio":[{"id":30280,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"],"bandwidth":121610,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-907","indexRange":"908-1563"},"segment_base":{"initialization":"0-907","index_range":"908-1563"},"codecid":0},{"id":30216,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=8425&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=8425&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=8425&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=ad15fc2485aae5aef0b852080a0b8feb&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=8425&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=8425&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=ad15fc2485aae5aef0b852080a0b8feb&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=8425&logo=40000000"],"bandwidth":67216,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-941","indexRange":"942-1597"},"segment_base":{"initialization":"0-941","index_range":"942-1597"},"codecid":0},{"id":30232,"baseUrl":"https://upos-sz-mirrorali.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30232.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=alibv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8103c3fd1d656b22e6022bded38479e2&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,1&agrr=0&bw=15243&logo=80000000","base_url":"https://upos-sz-mirrorali.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30232.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=alibv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8103c3fd1d656b22e6022bded38479e2&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,1&agrr=0&bw=15243&logo=80000000","backupUrl":null,"backup_url":null,"bandwidth":121610,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-907","indexRange":"908-1563"},"segment_base":{"initialization":"0-907","index_range":"908-1563"},"codecid":0}],"dolby":null}
/// support_formats : [{"quality":112,"format":"hdflv2","new_description":"1080P 高码率","display_desc":"1080P","superscript":"高码率","codecs":["avc1.640032","hev1.1.6.L150.90"]},{"quality":80,"format":"flv","new_description":"1080P 高清","display_desc":"1080P","superscript":"","codecs":["avc1.640032","hev1.1.6.L150.90"]},{"quality":64,"format":"flv720","new_description":"720P 高清","display_desc":"720P","superscript":"","codecs":["avc1.640028","hev1.1.6.L120.90"]},{"quality":32,"format":"flv480","new_description":"480P 清晰","display_desc":"480P","superscript":"","codecs":["avc1.64001F","hev1.1.6.L120.90"]},{"quality":16,"format":"mp4","new_description":"360P 流畅","display_desc":"360P","superscript":"","codecs":["avc1.64001E","hev1.1.6.L120.90"]}]
/// high_format : null
/// volume : {"measured_i":-8.3,"measured_lra":6.1,"measured_tp":3,"measured_threshold":-18.5,"target_offset":0.5,"target_i":-14,"target_tp":-1}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? from,
    String? result,
    String? message,
    num? quality,
    String? format,
    num? timelength,
    String? acceptFormat,
    List<String>? acceptDescription,
    List<num>? acceptQuality,
    num? videoCodecid,
    String? seekParam,
    String? seekType,
    Dash? dash,
    List<SupportFormats>? supportFormats,
    dynamic highFormat,
    Volume? volume,
  }) {
    _from = from;
    _result = result;
    _message = message;
    _quality = quality;
    _format = format;
    _timelength = timelength;
    _acceptFormat = acceptFormat;
    _acceptDescription = acceptDescription;
    _acceptQuality = acceptQuality;
    _videoCodecid = videoCodecid;
    _seekParam = seekParam;
    _seekType = seekType;
    _dash = dash;
    _supportFormats = supportFormats;
    _highFormat = highFormat;
    _volume = volume;
  }

  Data.fromJson(dynamic json) {
    _from = json['from'];
    _result = json['result'];
    _message = json['message'];
    _quality = json['quality'];
    _format = json['format'];
    _timelength = json['timelength'];
    _acceptFormat = json['accept_format'];
    _acceptDescription = json['accept_description'] != null ? json['accept_description'].cast<String>() : [];
    _acceptQuality = json['accept_quality'] != null ? json['accept_quality'].cast<num>() : [];
    _videoCodecid = json['video_codecid'];
    _seekParam = json['seek_param'];
    _seekType = json['seek_type'];
    _dash = json['dash'] != null ? Dash.fromJson(json['dash']) : null;
    if (json['support_formats'] != null) {
      _supportFormats = [];
      json['support_formats'].forEach((v) {
        _supportFormats?.add(SupportFormats.fromJson(v));
      });
    }
    _highFormat = json['high_format'];
    _volume = json['volume'] != null ? Volume.fromJson(json['volume']) : null;
  }

  String? _from;
  String? _result;
  String? _message;
  num? _quality;
  String? _format;
  num? _timelength;
  String? _acceptFormat;
  List<String>? _acceptDescription;
  List<num>? _acceptQuality;
  num? _videoCodecid;
  String? _seekParam;
  String? _seekType;
  Dash? _dash;
  List<SupportFormats>? _supportFormats;
  dynamic _highFormat;
  Volume? _volume;

  Data copyWith({
    String? from,
    String? result,
    String? message,
    num? quality,
    String? format,
    num? timelength,
    String? acceptFormat,
    List<String>? acceptDescription,
    List<num>? acceptQuality,
    num? videoCodecid,
    String? seekParam,
    String? seekType,
    Dash? dash,
    List<SupportFormats>? supportFormats,
    dynamic highFormat,
    Volume? volume,
  }) =>
      Data(
        from: from ?? _from,
        result: result ?? _result,
        message: message ?? _message,
        quality: quality ?? _quality,
        format: format ?? _format,
        timelength: timelength ?? _timelength,
        acceptFormat: acceptFormat ?? _acceptFormat,
        acceptDescription: acceptDescription ?? _acceptDescription,
        acceptQuality: acceptQuality ?? _acceptQuality,
        videoCodecid: videoCodecid ?? _videoCodecid,
        seekParam: seekParam ?? _seekParam,
        seekType: seekType ?? _seekType,
        dash: dash ?? _dash,
        supportFormats: supportFormats ?? _supportFormats,
        highFormat: highFormat ?? _highFormat,
        volume: volume ?? _volume,
      );

  String? get from => _from;

  String? get result => _result;

  String? get message => _message;

  num? get quality => _quality;

  String? get format => _format;

  num? get timelength => _timelength;

  String? get acceptFormat => _acceptFormat;

  List<String>? get acceptDescription => _acceptDescription;

  List<num>? get acceptQuality => _acceptQuality;

  num? get videoCodecid => _videoCodecid;

  String? get seekParam => _seekParam;

  String? get seekType => _seekType;

  Dash? get dash => _dash;

  List<SupportFormats>? get supportFormats => _supportFormats;

  dynamic get highFormat => _highFormat;

  Volume? get volume => _volume;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['from'] = _from;
    map['result'] = _result;
    map['message'] = _message;
    map['quality'] = _quality;
    map['format'] = _format;
    map['timelength'] = _timelength;
    map['accept_format'] = _acceptFormat;
    map['accept_description'] = _acceptDescription;
    map['accept_quality'] = _acceptQuality;
    map['video_codecid'] = _videoCodecid;
    map['seek_param'] = _seekParam;
    map['seek_type'] = _seekType;
    if (_dash != null) {
      map['dash'] = _dash?.toJson();
    }
    if (_supportFormats != null) {
      map['support_formats'] = _supportFormats?.map((v) => v.toJson()).toList();
    }
    map['high_format'] = _highFormat;
    if (_volume != null) {
      map['volume'] = _volume?.toJson();
    }
    return map;
  }
}

/// measured_i : -8.3
/// measured_lra : 6.1
/// measured_tp : 3
/// measured_threshold : -18.5
/// target_offset : 0.5
/// target_i : -14
/// target_tp : -1

Volume volumeFromJson(String str) => Volume.fromJson(json.decode(str));

String volumeToJson(Volume data) => json.encode(data.toJson());

class Volume {
  Volume({
    num? measuredI,
    num? measuredLra,
    num? measuredTp,
    num? measuredThreshold,
    num? targetOffset,
    num? targetI,
    num? targetTp,
  }) {
    _measuredI = measuredI;
    _measuredLra = measuredLra;
    _measuredTp = measuredTp;
    _measuredThreshold = measuredThreshold;
    _targetOffset = targetOffset;
    _targetI = targetI;
    _targetTp = targetTp;
  }

  Volume.fromJson(dynamic json) {
    _measuredI = json['measured_i'];
    _measuredLra = json['measured_lra'];
    _measuredTp = json['measured_tp'];
    _measuredThreshold = json['measured_threshold'];
    _targetOffset = json['target_offset'];
    _targetI = json['target_i'];
    _targetTp = json['target_tp'];
  }

  num? _measuredI;
  num? _measuredLra;
  num? _measuredTp;
  num? _measuredThreshold;
  num? _targetOffset;
  num? _targetI;
  num? _targetTp;

  Volume copyWith({
    num? measuredI,
    num? measuredLra,
    num? measuredTp,
    num? measuredThreshold,
    num? targetOffset,
    num? targetI,
    num? targetTp,
  }) =>
      Volume(
        measuredI: measuredI ?? _measuredI,
        measuredLra: measuredLra ?? _measuredLra,
        measuredTp: measuredTp ?? _measuredTp,
        measuredThreshold: measuredThreshold ?? _measuredThreshold,
        targetOffset: targetOffset ?? _targetOffset,
        targetI: targetI ?? _targetI,
        targetTp: targetTp ?? _targetTp,
      );

  num? get measuredI => _measuredI;

  num? get measuredLra => _measuredLra;

  num? get measuredTp => _measuredTp;

  num? get measuredThreshold => _measuredThreshold;

  num? get targetOffset => _targetOffset;

  num? get targetI => _targetI;

  num? get targetTp => _targetTp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['measured_i'] = _measuredI;
    map['measured_lra'] = _measuredLra;
    map['measured_tp'] = _measuredTp;
    map['measured_threshold'] = _measuredThreshold;
    map['target_offset'] = _targetOffset;
    map['target_i'] = _targetI;
    map['target_tp'] = _targetTp;
    return map;
  }
}

/// quality : 112
/// format : "hdflv2"
/// new_description : "1080P 高码率"
/// display_desc : "1080P"
/// superscript : "高码率"
/// codecs : ["avc1.640032","hev1.1.6.L150.90"]

SupportFormats supportFormatsFromJson(String str) => SupportFormats.fromJson(json.decode(str));

String supportFormatsToJson(SupportFormats data) => json.encode(data.toJson());

class SupportFormats {
  SupportFormats({
    num? quality,
    String? format,
    String? newDescription,
    String? displayDesc,
    String? superscript,
    List<String>? codecs,
  }) {
    _quality = quality;
    _format = format;
    _newDescription = newDescription;
    _displayDesc = displayDesc;
    _superscript = superscript;
    _codecs = codecs;
  }

  SupportFormats.fromJson(dynamic json) {
    _quality = json['quality'];
    _format = json['format'];
    _newDescription = json['new_description'];
    _displayDesc = json['display_desc'];
    _superscript = json['superscript'];
    _codecs = json['codecs'] != null ? json['codecs'].cast<String>() : [];
  }

  num? _quality;
  String? _format;
  String? _newDescription;
  String? _displayDesc;
  String? _superscript;
  List<String>? _codecs;

  SupportFormats copyWith({
    num? quality,
    String? format,
    String? newDescription,
    String? displayDesc,
    String? superscript,
    List<String>? codecs,
  }) =>
      SupportFormats(
        quality: quality ?? _quality,
        format: format ?? _format,
        newDescription: newDescription ?? _newDescription,
        displayDesc: displayDesc ?? _displayDesc,
        superscript: superscript ?? _superscript,
        codecs: codecs ?? _codecs,
      );

  num? get quality => _quality;

  String? get format => _format;

  String? get newDescription => _newDescription;

  String? get displayDesc => _displayDesc;

  String? get superscript => _superscript;

  List<String>? get codecs => _codecs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quality'] = _quality;
    map['format'] = _format;
    map['new_description'] = _newDescription;
    map['display_desc'] = _displayDesc;
    map['superscript'] = _superscript;
    map['codecs'] = _codecs;
    return map;
  }
}

/// duration : 258
/// minBufferTime : 1.5
/// min_buffer_time : 1.5
/// video : [{"id":80,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"],"bandwidth":2621318,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.640032","width":1920,"height":1080,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-991","indexRange":"992-1647"},"segment_base":{"initialization":"0-991","index_range":"992-1647"},"codecid":7},{"id":80,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=228981&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=228981&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=228981&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8b770a2a7205a8a0c4fe804357006908&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=228981&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=2bb4cea14893994fa7ada62503be9b12&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=228981&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30077.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8b770a2a7205a8a0c4fe804357006908&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=228981&logo=40000000"],"bandwidth":1827349,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L150.90","width":1920,"height":1080,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":64,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=219796&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=219796&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=219796&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=18ceab0940674bb710fbccae09a33370&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=219796&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7a02459d371afa6da1da8903e2a015fc&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=219796&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30064.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=18ceab0940674bb710fbccae09a33370&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=219796&logo=40000000"],"bandwidth":1754048,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.640028","width":1280,"height":720,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-989","indexRange":"990-1645"},"segment_base":{"initialization":"0-989","index_range":"990-1645"},"codecid":7},{"id":64,"baseUrl":"https://xy114x97x80x164xy.mcdn.bilivideo.cn:4483/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=mcdn&oi=1961721642&trid=0001e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=225f20a4c75be84af2b6c24e49dc5273&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&mcdnid=9001181&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=97374&logo=A0000100","base_url":"https://xy114x97x80x164xy.mcdn.bilivideo.cn:4483/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=mcdn&oi=1961721642&trid=0001e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=225f20a4c75be84af2b6c24e49dc5273&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&mcdnid=9001181&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=97374&logo=A0000100","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=97374&logo=40000000","https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=97374&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=97374&logo=40000000","https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30066.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=0cd4a972b2f0417549e6a5f2f93c87e3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=97374&logo=40000000"],"bandwidth":777081,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":1280,"height":720,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":32,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=99071&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=99071&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=99071&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=08f5a40c12b356042b8fa48aba261f8f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=99071&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=e846ddd06f5ae04fb3693e4792adb32c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=99071&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30032.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=08f5a40c12b356042b8fa48aba261f8f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=99071&logo=40000000"],"bandwidth":790628,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.64001F","width":852,"height":480,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-990","indexRange":"991-1646"},"segment_base":{"initialization":"0-990","index_range":"991-1646"},"codecid":7},{"id":32,"baseUrl":"https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=60104&logo=80000000","base_url":"https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=60104&logo=80000000","backupUrl":["https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=60104&logo=40000000","https://upos-sz-mirrorcosb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=6a0cb1437a59ce94cb08d867bc529581&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=60104&logo=40000000"],"backup_url":["https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7ef49c17e71e35b379e6fb7b7de79c49&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=60104&logo=40000000","https://upos-sz-mirrorcosb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30033.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=cosbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=6a0cb1437a59ce94cb08d867bc529581&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=60104&logo=40000000"],"bandwidth":479658,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":852,"height":480,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1154","indexRange":"1155-1810"},"segment_base":{"initialization":"0-1154","index_range":"1155-1810"},"codecid":12},{"id":16,"baseUrl":"https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=38818&logo=80000000","base_url":"https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=38818&logo=80000000","backupUrl":["https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=38818&logo=40000000","https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=38818&logo=40000000"],"backup_url":["https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=38818&logo=40000000","https://upos-sz-mirrorctos.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30011.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=ctosbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=b18b84c0fec68e40290d164b3cce48de&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=38818&logo=40000000"],"bandwidth":309788,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"hev1.1.6.L120.90","width":640,"height":360,"frameRate":"30.303","frame_rate":"30.303","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-1053","indexRange":"1054-1709"},"segment_base":{"initialization":"0-1053","index_range":"1054-1709"},"codecid":12},{"id":16,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=44274&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=44274&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=44274&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=789c98608daf71627174ae31820a54a4&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=44274&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=7c7f11a82744e974cf6a8eb27df39b1f&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=44274&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30016.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=789c98608daf71627174ae31820a54a4&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=44274&logo=40000000"],"bandwidth":353322,"mimeType":"video/mp4","mime_type":"video/mp4","codecs":"avc1.64001E","width":640,"height":360,"frameRate":"29.412","frame_rate":"29.412","sar":"1:1","startWithSap":1,"start_with_sap":1,"SegmentBase":{"Initialization":"0-998","indexRange":"999-1654"},"segment_base":{"initialization":"0-998","index_range":"999-1654"},"codecid":7}]
/// audio : [{"id":30280,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"],"bandwidth":121610,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-907","indexRange":"908-1563"},"segment_base":{"initialization":"0-907","index_range":"908-1563"},"codecid":0},{"id":30216,"baseUrl":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=8425&logo=80000000","base_url":"https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=8425&logo=80000000","backupUrl":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=8425&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=ad15fc2485aae5aef0b852080a0b8feb&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=8425&logo=40000000"],"backup_url":["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=1544f65431bb9dad227e9cf02ec8c2f5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=8425&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30216.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=ad15fc2485aae5aef0b852080a0b8feb&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=8425&logo=40000000"],"bandwidth":67216,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-941","indexRange":"942-1597"},"segment_base":{"initialization":"0-941","index_range":"942-1597"},"codecid":0},{"id":30232,"baseUrl":"https://upos-sz-mirrorali.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30232.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=alibv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8103c3fd1d656b22e6022bded38479e2&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,1&agrr=0&bw=15243&logo=80000000","base_url":"https://upos-sz-mirrorali.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30232.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=alibv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=8103c3fd1d656b22e6022bded38479e2&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,1&agrr=0&bw=15243&logo=80000000","backupUrl":null,"backup_url":null,"bandwidth":121610,"mimeType":"audio/mp4","mime_type":"audio/mp4","codecs":"mp4a.40.2","width":0,"height":0,"frameRate":"","frame_rate":"","sar":"","startWithSap":0,"start_with_sap":0,"SegmentBase":{"Initialization":"0-907","indexRange":"908-1563"},"segment_base":{"initialization":"0-907","index_range":"908-1563"},"codecid":0}]
/// dolby : null

Dash dashFromJson(String str) => Dash.fromJson(json.decode(str));

String dashToJson(Dash data) => json.encode(data.toJson());

class Dash {
  Dash({
    num? duration,
    num? minBufferTime,
    List<Video>? video,
    List<Audio>? audio,
    dynamic dolby,
  }) {
    _duration = duration;
    _minBufferTime = minBufferTime;
    _minBufferTime = minBufferTime;
    _video = video;
    _audio = audio;
    _dolby = dolby;
  }

  Dash.fromJson(dynamic json) {
    _duration = json['duration'];
    _minBufferTime = json['minBufferTime'];
    _minBufferTime = json['min_buffer_time'];
    if (json['video'] != null) {
      _video = [];
      json['video'].forEach((v) {
        _video?.add(Video.fromJson(v));
      });
    }
    if (json['audio'] != null) {
      _audio = [];
      json['audio'].forEach((v) {
        _audio?.add(Audio.fromJson(v));
      });
    }
    _dolby = json['dolby'];
  }

  num? _duration;
  num? _minBufferTime;
  List<Video>? _video;
  List<Audio>? _audio;
  dynamic _dolby;

  Dash copyWith({
    num? duration,
    num? minBufferTime,
    List<Video>? video,
    List<Audio>? audio,
    dynamic dolby,
  }) =>
      Dash(
        duration: duration ?? _duration,
        minBufferTime: minBufferTime ?? _minBufferTime,
        video: video ?? _video,
        audio: audio ?? _audio,
        dolby: dolby ?? _dolby,
      );

  num? get duration => _duration;

  num? get minBufferTime => _minBufferTime;

  List<Video>? get video => _video;

  List<Audio>? get audio => _audio;

  dynamic get dolby => _dolby;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['duration'] = _duration;
    map['minBufferTime'] = _minBufferTime;
    map['min_buffer_time'] = _minBufferTime;
    if (_video != null) {
      map['video'] = _video?.map((v) => v.toJson()).toList();
    }
    if (_audio != null) {
      map['audio'] = _audio?.map((v) => v.toJson()).toList();
    }
    map['dolby'] = _dolby;
    return map;
  }
}

/// id : 30280
/// baseUrl : "https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000"
/// base_url : "https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=15243&logo=80000000"
/// backupUrl : ["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"]
/// backup_url : ["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=000a9ee83af24ab742ddc3fda6412c6c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=15243&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30280.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=abea453515d72b9c1be238eab96ae774&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=15243&logo=40000000"]
/// bandwidth : 121610
/// mimeType : "audio/mp4"
/// mime_type : "audio/mp4"
/// codecs : "mp4a.40.2"
/// width : 0
/// height : 0
/// frameRate : ""
/// frame_rate : ""
/// sar : ""
/// startWithSap : 0
/// start_with_sap : 0
/// SegmentBase : {"Initialization":"0-907","indexRange":"908-1563"}
/// segment_base : {"initialization":"0-907","index_range":"908-1563"}
/// codecid : 0

Audio audioFromJson(String str) => Audio.fromJson(json.decode(str));

String audioToJson(Audio data) => json.encode(data.toJson());

class Audio {
  Audio({
    num? id,
    String? baseUrl,
    List<String>? backupUrl,
    num? bandwidth,
    String? mimeType,
    String? codecs,
    num? width,
    num? height,
    String? frameRate,
    String? sar,
    num? startWithSap,
    SegmentBase? segmentBase,
    num? codecid,
  }) {
    _id = id;
    _baseUrl = baseUrl;
    _baseUrl = baseUrl;
    _backupUrl = backupUrl;
    _backupUrl = backupUrl;
    _bandwidth = bandwidth;
    _mimeType = mimeType;
    _mimeType = mimeType;
    _codecs = codecs;
    _width = width;
    _height = height;
    _frameRate = frameRate;
    _frameRate = frameRate;
    _sar = sar;
    _startWithSap = startWithSap;
    _startWithSap = startWithSap;
    _segmentBase = segmentBase;
    _segmentBase = segmentBase;
    _codecid = codecid;
  }

  Audio.fromJson(dynamic json) {
    _id = json['id'];
    _baseUrl = json['baseUrl'];
    _baseUrl = json['base_url'];
    _backupUrl = json['backupUrl'] != null ? json['backupUrl'].cast<String>() : [];
    _backupUrl = json['backup_url'] != null ? json['backup_url'].cast<String>() : [];
    _bandwidth = json['bandwidth'];
    _mimeType = json['mimeType'];
    _mimeType = json['mime_type'];
    _codecs = json['codecs'];
    _width = json['width'];
    _height = json['height'];
    _frameRate = json['frameRate'];
    _frameRate = json['frame_rate'];
    _sar = json['sar'];
    _startWithSap = json['startWithSap'];
    _startWithSap = json['start_with_sap'];
    _segmentBase = json['SegmentBase'] != null ? SegmentBase.fromJson(json['SegmentBase']) : null;
    _segmentBase = json['segment_base'] != null ? SegmentBase.fromJson(json['segment_base']) : null;
    _codecid = json['codecid'];
  }

  num? _id;
  String? _baseUrl;
  List<String>? _backupUrl;
  num? _bandwidth;
  String? _mimeType;
  String? _codecs;
  num? _width;
  num? _height;
  String? _frameRate;
  String? _sar;
  num? _startWithSap;
  SegmentBase? _segmentBase;
  num? _codecid;

  Audio copyWith({
    num? id,
    String? baseUrl,
    List<String>? backupUrl,
    num? bandwidth,
    String? mimeType,
    String? codecs,
    num? width,
    num? height,
    String? frameRate,
    String? sar,
    num? startWithSap,
    SegmentBase? segmentBase,
    num? codecid,
  }) =>
      Audio(
        id: id ?? _id,
        baseUrl: baseUrl ?? _baseUrl,
        backupUrl: backupUrl ?? _backupUrl,
        bandwidth: bandwidth ?? _bandwidth,
        mimeType: mimeType ?? _mimeType,
        codecs: codecs ?? _codecs,
        width: width ?? _width,
        height: height ?? _height,
        frameRate: frameRate ?? _frameRate,
        sar: sar ?? _sar,
        startWithSap: startWithSap ?? _startWithSap,
        segmentBase: segmentBase ?? _segmentBase,
        codecid: codecid ?? _codecid,
      );

  num? get id => _id;

  String? get baseUrl => _baseUrl;

  List<String>? get backupUrl => _backupUrl;

  num? get bandwidth => _bandwidth;

  String? get mimeType => _mimeType;

  String? get codecs => _codecs;

  num? get width => _width;

  num? get height => _height;

  String? get frameRate => _frameRate;

  String? get sar => _sar;

  num? get startWithSap => _startWithSap;

  SegmentBase? get segmentBase => _segmentBase;

  num? get codecid => _codecid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['baseUrl'] = _baseUrl;
    map['base_url'] = _baseUrl;
    map['backupUrl'] = _backupUrl;
    map['backup_url'] = _backupUrl;
    map['bandwidth'] = _bandwidth;
    map['mimeType'] = _mimeType;
    map['mime_type'] = _mimeType;
    map['codecs'] = _codecs;
    map['width'] = _width;
    map['height'] = _height;
    map['frameRate'] = _frameRate;
    map['frame_rate'] = _frameRate;
    map['sar'] = _sar;
    map['startWithSap'] = _startWithSap;
    map['start_with_sap'] = _startWithSap;
    if (_segmentBase != null) {
      map['SegmentBase'] = _segmentBase?.toJson();
    }
    if (_segmentBase != null) {
      map['segment_base'] = _segmentBase?.toJson();
    }
    map['codecid'] = _codecid;
    return map;
  }
}

/// initialization : "0-907"
/// index_range : "908-1563"

SegmentBase segmentBaseFromJson(String str) => SegmentBase.fromJson(json.decode(str));

String segmentBaseToJson(SegmentBase data) => json.encode(data.toJson());

class SegmentBase {
  SegmentBase({
    String? initialization,
    String? indexRange,
  }) {
    _initialization = initialization;
    _indexRange = indexRange;
  }

  SegmentBase.fromJson(dynamic json) {
    _initialization = json['initialization'];
    _indexRange = json['index_range'];
  }

  String? _initialization;
  String? _indexRange;

  SegmentBase copyWith({
    String? initialization,
    String? indexRange,
  }) =>
      SegmentBase(
        initialization: initialization ?? _initialization,
        indexRange: indexRange ?? _indexRange,
      );

  String? get initialization => _initialization;

  String? get indexRange => _indexRange;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['initialization'] = _initialization;
    map['index_range'] = _indexRange;
    return map;
  }
}

/// id : 80
/// baseUrl : "https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000"
/// base_url : "https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=0,3&agrr=0&bw=328471&logo=80000000"
/// backupUrl : ["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"]
/// backup_url : ["https://upos-sz-mirrorhw.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=aa57c4b341eb29cb647a9dcc15f2e760&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=1,3&agrr=0&bw=328471&logo=40000000","https://upos-sz-mirrorhwb.bilivideo.com/upgcxcode/56/73/746977356/746977356-1-30080.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1655380926&gen=playurlv2&os=hwbbv&oi=1961721642&trid=e6a5e7a88a0141f9b4719871ae49defdu&mid=0&platform=pc&upsig=493a697c19d5b621fb33ba1a655f1393&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&bvc=vod&nettype=0&orderid=2,3&agrr=0&bw=328471&logo=40000000"]
/// bandwidth : 2621318
/// mimeType : "video/mp4"
/// mime_type : "video/mp4"
/// codecs : "avc1.640032"
/// width : 1920
/// height : 1080
/// frameRate : "29.412"
/// frame_rate : "29.412"
/// sar : "1:1"
/// startWithSap : 1
/// start_with_sap : 1
/// SegmentBase : {"Initialization":"0-991","indexRange":"992-1647"}
/// segment_base : {"initialization":"0-991","index_range":"992-1647"}
/// codecid : 7

Video videoFromJson(String str) => Video.fromJson(json.decode(str));

String videoToJson(Video data) => json.encode(data.toJson());

class Video {
  Video({
    num? id,
    String? baseUrl,
    List<String>? backupUrl,
    num? bandwidth,
    String? mimeType,
    String? codecs,
    num? width,
    num? height,
    String? frameRate,
    String? sar,
    num? startWithSap,
    SegmentBase? segmentBase,
    num? codecid,
  }) {
    _id = id;
    _baseUrl = baseUrl;
    _baseUrl = baseUrl;
    _backupUrl = backupUrl;
    _backupUrl = backupUrl;
    _bandwidth = bandwidth;
    _mimeType = mimeType;
    _mimeType = mimeType;
    _codecs = codecs;
    _width = width;
    _height = height;
    _frameRate = frameRate;
    _frameRate = frameRate;
    _sar = sar;
    _startWithSap = startWithSap;
    _startWithSap = startWithSap;
    _segmentBase = segmentBase;
    _segmentBase = segmentBase;
    _codecid = codecid;
  }

  Video.fromJson(dynamic json) {
    _id = json['id'];
    _baseUrl = json['baseUrl'];
    _baseUrl = json['base_url'];
    _backupUrl = json['backupUrl'] != null ? json['backupUrl'].cast<String>() : [];
    _backupUrl = json['backup_url'] != null ? json['backup_url'].cast<String>() : [];
    _bandwidth = json['bandwidth'];
    _mimeType = json['mimeType'];
    _mimeType = json['mime_type'];
    _codecs = json['codecs'];
    _width = json['width'];
    _height = json['height'];
    _frameRate = json['frameRate'];
    _frameRate = json['frame_rate'];
    _sar = json['sar'];
    _startWithSap = json['startWithSap'];
    _startWithSap = json['start_with_sap'];
    _segmentBase = json['SegmentBase'] != null ? SegmentBase.fromJson(json['SegmentBase']) : null;
    _segmentBase = json['segment_base'] != null ? SegmentBase.fromJson(json['segment_base']) : null;
    _codecid = json['codecid'];
  }

  num? _id;
  String? _baseUrl;
  List<String>? _backupUrl;
  num? _bandwidth;
  String? _mimeType;
  String? _codecs;
  num? _width;
  num? _height;
  String? _frameRate;
  String? _sar;
  num? _startWithSap;
  SegmentBase? _segmentBase;
  num? _codecid;

  Video copyWith({
    num? id,
    String? baseUrl,
    List<String>? backupUrl,
    num? bandwidth,
    String? mimeType,
    String? codecs,
    num? width,
    num? height,
    String? frameRate,
    String? sar,
    num? startWithSap,
    SegmentBase? segmentBase,
    num? codecid,
  }) =>
      Video(
        id: id ?? _id,
        baseUrl: baseUrl ?? _baseUrl,
        backupUrl: backupUrl ?? _backupUrl,
        bandwidth: bandwidth ?? _bandwidth,
        mimeType: mimeType ?? _mimeType,
        codecs: codecs ?? _codecs,
        width: width ?? _width,
        height: height ?? _height,
        frameRate: frameRate ?? _frameRate,
        sar: sar ?? _sar,
        startWithSap: startWithSap ?? _startWithSap,
        segmentBase: segmentBase ?? _segmentBase,
        codecid: codecid ?? _codecid,
      );

  num? get id => _id;

  String? get baseUrl => _baseUrl;

  List<String>? get backupUrl => _backupUrl;

  num? get bandwidth => _bandwidth;

  String? get mimeType => _mimeType;

  String? get codecs => _codecs;

  num? get width => _width;

  num? get height => _height;

  String? get frameRate => _frameRate;

  String? get sar => _sar;

  num? get startWithSap => _startWithSap;

  SegmentBase? get segmentBase => _segmentBase;

  num? get codecid => _codecid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['baseUrl'] = _baseUrl;
    map['base_url'] = _baseUrl;
    map['backupUrl'] = _backupUrl;
    map['backup_url'] = _backupUrl;
    map['bandwidth'] = _bandwidth;
    map['mimeType'] = _mimeType;
    map['mime_type'] = _mimeType;
    map['codecs'] = _codecs;
    map['width'] = _width;
    map['height'] = _height;
    map['frameRate'] = _frameRate;
    map['frame_rate'] = _frameRate;
    map['sar'] = _sar;
    map['startWithSap'] = _startWithSap;
    map['start_with_sap'] = _startWithSap;
    if (_segmentBase != null) {
      map['SegmentBase'] = _segmentBase?.toJson();
    }
    if (_segmentBase != null) {
      map['segment_base'] = _segmentBase?.toJson();
    }
    map['codecid'] = _codecid;
    return map;
  }
}
