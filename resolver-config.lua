name_servers={ns={}}

name_servers={
  round_robin={
    count=100,
    style="STRICT"
  },
  ns={"ns-1.oath.com","ns-2.oath.com"}
}

name_servers.round_robin.count=100;
name_servers.round_robin.style="STRICT";
name_servers.ns[0]="ns-1.oath.com";
name_servers.ns[1]="ns-2.oath.com";
