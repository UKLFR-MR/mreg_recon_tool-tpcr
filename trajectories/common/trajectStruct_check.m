function status=trajectStruct_check(T)

status=1;

maxG=max(T.G,[],1);
maxS=max((diff(T.G)*100*1000));

if (maxG(1) > 1.01*T.SYS.GMAX_SI || maxG(2) > 1.01*T.SYS.GMAX_SI || maxG(3) > 1.01*T.SYS.GMAX_SI)
    status = 0;
end

if (maxS(1) > 1.1*T.SYS.SLEW || maxS(2) > 1.1*T.SYS.SLEW || maxS(3) > 1.15*T.SYS.SLEW)
    status = 0;
end

if status == 1
    display('no gradient system violation')
end

if status == 0
    plot((diff(T.G)/T.SYS.GRT_SI));
    figure; plot(T.G)
    display('!!!VIOLATION!!!')
end