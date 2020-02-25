@echo off

SET "tools_dir=tnt\tools"
SET "ov=override"

FOR %%S IN (
ajant27
ajant28
ajant36
ajant37

alora35
alora36
alora37

bedwin30
bedwin35
bedwin36
bedwin37

bgmnsc29
bgmnsc35
bgmnsc36
bgmnsc37

branw29
branw30
branw35
branw36
branw37

coran35
coran36
coran37

dynah35
dynah37

eldot35
eldot36
eldot37

faldn35
faldn36
faldn37

garrk35
garrk37

jaher30
jaher35
jaher36
jaher37

kagan35
kagan37

khald30
khald31
khald35
khald37

kivan35
kivan36
kivan37

montr35
montr36
montr37

quayl35
quayl36
quayl37

safan35
safan36
safan37

shart35
shart36
shart37

skiee35
skiee36
skiee37

tiaxx35

vicon31
vicon35
vicon36

xannn35
xannn36
xannn37

yeslk31
yeslk36
yeslk37
) DO (
  "%tools_dir%\wavc.exe" "%ov%\%%S.wav" "%ov%\%%S.wav"
)
