import 'package:medical_consultation/models/conversation.dart';

final jsonData = [
  {
    "full_name": "Lottie Kyffin",
    "last_message":
        "Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.",
    "unread_count": 57,
    "id": 1,
    "last_message_time": "06/07/2023",
    "is_online": false,
    "image_url": "https://robohash.org/fugaautemet.png?size=50x50&set=set1"
  },
  {
    "full_name": "Betteanne Blay",
    "last_message":
        "Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.",
    "unread_count": 44,
    "id": 2,
    "last_message_time": "07/04/2023",
    "is_online": true,
    "image_url": "https://robohash.org/enimquirepellat.png?size=50x50&set=set1"
  },
  {
    "full_name": "Taryn Roz",
    "last_message":
        "Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.",
    "unread_count": 39,
    "id": 3,
    "last_message_time": "24/04/2023",
    "is_online": true,
    "image_url": "https://robohash.org/fugiatnonofficia.png?size=50x50&set=set1"
  },
  {
    "full_name": "Andros Jamblin",
    "last_message":
        "Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.",
    "unread_count": 88,
    "id": 4,
    "last_message_time": "29/04/2023",
    "is_online": false,
    "image_url": "https://robohash.org/atquiquibusdam.png?size=50x50&set=set1"
  },
  {
    "full_name": "Reginauld Killshaw",
    "last_message":
        "Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.",
    "unread_count": 5,
    "id": 5,
    "last_message_time": "23/02/2023",
    "is_online": false,
    "image_url":
        "https://robohash.org/cupiditateeumdolor.png?size=50x50&set=set1"
  },
  {
    "full_name": "Dalis Checcuzzi",
    "last_message":
        "Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.",
    "unread_count": 40,
    "id": 6,
    "last_message_time": "11/03/2023",
    "is_online": true,
    "image_url": "https://robohash.org/facerevelcommodi.png?size=50x50&set=set1"
  },
  {
    "full_name": "Brade Cockroft",
    "last_message":
        "Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.",
    "unread_count": 47,
    "id": 7,
    "last_message_time": "26/03/2023",
    "is_online": false,
    "image_url": "https://robohash.org/esseexvoluptatem.png?size=50x50&set=set1"
  },
  {
    "full_name": "Mona Alpe",
    "last_message":
        "Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.",
    "unread_count": 8,
    "id": 8,
    "last_message_time": "12/02/2023",
    "is_online": false,
    "image_url":
        "https://robohash.org/dictafugiatveritatis.png?size=50x50&set=set1"
  },
  {
    "full_name": "Nicolas Judson",
    "last_message": "Morbi quis tortor id nulla ultrices aliquet.",
    "unread_count": 37,
    "id": 9,
    "last_message_time": "23/04/2023",
    "is_online": true,
    "image_url": "https://robohash.org/estetmolestiae.png?size=50x50&set=set1"
  },
  {
    "full_name": "Luz Culy",
    "last_message":
        "Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.",
    "unread_count": 69,
    "id": 10,
    "last_message_time": "11/01/2023",
    "is_online": true,
    "image_url": "https://robohash.org/rerumporroipsa.png?size=50x50&set=set1"
  },
  {
    "full_name": "Collen Maddison",
    "last_message":
        "Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.",
    "unread_count": 74,
    "id": 11,
    "last_message_time": "12/01/2023",
    "is_online": false,
    "image_url": "https://robohash.org/autpraesentiumet.png?size=50x50&set=set1"
  },
  {
    "full_name": "Sondra Uden",
    "last_message":
        "Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.",
    "unread_count": 2,
    "id": 12,
    "last_message_time": "22/02/2023",
    "is_online": true,
    "image_url":
        "https://robohash.org/impeditsolutaatque.png?size=50x50&set=set1"
  },
  {
    "full_name": "Elyn Cazin",
    "last_message":
        "Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.",
    "unread_count": 46,
    "id": 13,
    "last_message_time": "27/02/2023",
    "is_online": false,
    "image_url":
        "https://robohash.org/providenteadolorem.png?size=50x50&set=set1"
  },
  {
    "full_name": "Ambur Ladbury",
    "last_message":
        "Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.",
    "unread_count": 95,
    "id": 14,
    "last_message_time": "28/01/2023",
    "is_online": false,
    "image_url":
        "https://robohash.org/aliquiddebitisaut.png?size=50x50&set=set1"
  },
  {
    "full_name": "Alasteir Riche",
    "last_message":
        "Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.",
    "unread_count": 83,
    "id": 15,
    "last_message_time": "01/07/2023",
    "is_online": true,
    "image_url":
        "https://robohash.org/dolorumbeataequasi.png?size=50x50&set=set1"
  }
];

final List<Conversation> userConversations =
    jsonData.map((json) => Conversation.fromJson(json)).toList();
