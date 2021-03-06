Перем юТест;
Перем Данные;

Процедура Инициализация()
	Данные = 
	"
	|Стр2
	|Стр3
	|Стр4
	|
	|Стр6
	|Стр7
	|Стр8
	|
	|Стр10";
КонецПроцедуры

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ВернутьСтроку1");
	ВсеТесты.Добавить("ТестДолжен_ВернутьСтроку2");
	ВсеТесты.Добавить("ТестДолжен_ВернутьСтроку5");
	ВсеТесты.Добавить("ТестДолжен_ВернутьСтроку10");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_ВернутьСтроку1() Экспорт

	Стр = СтрПолучитьСтроку(Данные, 1);

	юТест.ПроверитьРавенство("", Стр);
КонецПроцедуры

Процедура ТестДолжен_ВернутьСтроку2() Экспорт

	Стр = СтрПолучитьСтроку(Данные, 2);

	юТест.ПроверитьРавенство("Стр2", Стр);
КонецПроцедуры

Процедура ТестДолжен_ВернутьСтроку5() Экспорт

	Стр = СтрПолучитьСтроку(Данные, 5);

	юТест.ПроверитьРавенство("", Стр);
КонецПроцедуры

Процедура ТестДолжен_ВернутьСтроку10() Экспорт

	Стр = СтрПолучитьСтроку(Данные, 10);

	юТест.ПроверитьРавенство("Стр10", Стр);
КонецПроцедуры

Инициализация();