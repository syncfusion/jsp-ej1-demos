<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="datasource.schedule.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	ScheduleGetDataSource obj = new ScheduleGetDataSource();
	ArrayList<ScheduleDataSource> scheduledatas = obj.getData();
	request.setAttribute("scheduleData", scheduledatas);
	Date currentdate = new SimpleDateFormat("yyyy/MM/dd").parse("2017/6/5");
%>
<script type="text/javascript" 
	src="Scripts/I18n/ej.culture.fr-FR.min.js"></script>
<script type="text/javascript" 
	src="Scripts/I18n/ej.culture.vi-VN.min.js"></script>
<script type="text/javascript" 
	src="Scripts/I18n/ej.culture.en-US.min.js"></script>
<div class="cols-sample-area">
	<ej:schedule id="localeSchedule" width="100%" height="525px"
		currentDate="<%=currentdate%>" locale="fr-FR">
		<ej:schedule-appointmentSettings dataSource="${scheduleData}" id="Id"
			subject="Subject" description="Description" startTime="StartTime"
			endTime="EndTime" allDay="AllDay" recurrence="Recurrence"
			recurrenceRule="RecurrenceRule"></ej:schedule-appointmentSettings>
	</ej:schedule>
</div>
<div id="property-window" class="box wide">
	<div class="row">
		<div class="col-md-3">
			<label>Select Culture</label>
		</div>
		<br />
		<div class="col-md-3">
			<div id="localeItems">
				<ul>
					<li>en-US</li>
					<li>vi-VN</li>
					<li>fr-FR</li>
				</ul>
			</div>
			<ej:dropDownList id="scheduleCulture" targetID="localeItems"
				selectedIndex="2" select="onScheduleLocaleChange"></ej:dropDownList>
		</div>
	</div>
</div>
<script type="text/javascript">
	ej.Schedule.Locale["fr-FR"] = {
		ReminderWindowTitle: "fenêtre de rappel",
		CreateAppointmentTitle: "Créer Nomination",
		RecurrenceEditTitle: "Modifier Répétez Nomination",
		RecurrenceEditMessage: "Comment voulez-vous changer le rendez-vous dans la série?",
		RecurrenceEditOnly: "Seulement cette nomination",
		RecurrenceEditSeries: "La série entière",
		PreviousAppointment: "Nomination précédente",
		NextAppointment: "prochain rendez-vous",
		AppointmentSubject: "Assujettir",
		StartTime: "Heure de départ",
		EndTime: "Heure de fin",
		AllDay: "Toute la journée",
		StartTimeZone: "Start Time Zone",
		EndTimeZone: "End Time Zone",
		Today: "Aujourd'hui",
		Recurrence: "Répéter",
		Done: "Terminé",
		Cancel: "Annuler",
		Ok: "D'accord",
		Repeat: "Répéter",
		RepeatBy: "répéter par",
		RepeatEvery: "répéter chaque",
		RepeatOn: "répéter l'opération sur",
		StartsOn: "commence le",
		Ends: "Prend fin",
		Summary: "Résumé",
		Daily: "Tous les jours",
		Weekly: "Hebdomadaire",
		Monthly: "Mensuel",
		Yearly: "Annuel",
		Every: "Chaque",
		EveryWeekDay: "Tous les jours de la semaine",
		Never: "Jamais",
		After: "Après",
		Occurrence: "Présence (s)",
		On: "Sur",
		Edit: "modifier",
		RecurrenceDay: "Journées)",
		RecurrenceWeek: "Semaines)",
		RecurrenceMonth: "Mois)",
		RecurrenceYear: "Années)",
		The: "le",
		OfEvery: "de toute",
		First: "Premier",
		Second: "Seconde",
		Third: "Troisième",
		Fourth: "Quatrième",
		Last: "Dernier",
		WeekDay: "Jour de la semaine",
		WeekEndDay: "Day Weekend",
		Subject: "Assujettir",
		Categorize: "Catégories",
		DueIn: "Dû en",
		DismissAll: "Rejeter la totalité",
		Dismiss: "Rejeter",
		OpenItem: "Élément ouvert",
		Snooze: "Roupillon",
		Day: "journée",
		Week: "Semaine",
		WorkWeek: "Semaine de travail",
		Month: "Mois",
		AddEvent: "Ajouter événement",
		CustomView: "Vue personnalisée",
		Agenda: "Ordre du jour",
		Detailed: "Modifier Nomination",
		EventBeginsin: "Nomination commence dans",
		Editevent: "Modifier Nomination",
		Editseries: "Modifier la série",
		Times: "fois",
		Until: "jusqu'à",
		Eventwas: "rendez-vous était",
		Hours: "heures",
		Minutes: "mins",
		Overdue: "Nomination retard",
		Days: "journées)",
		Event: "un événement",
		Select: "sélectionner",
		Previous: "prev",
		Next: "prochain",
		Close: "Fermer",
		Delete: "Effacer",
		Date: "date",
		Showin: "Montre",
		Gotodate: "Aller à la date",
		Resources: "RESSOURCES",
		RecurrenceDeleteTitle: "Supprimer Répétez Nomination",
		Location: "Emplacement",
		Priority: "Priorité",
		RecurrenceAlert: "Alerte",
		NoTitle: "Pas de titre",
		OverFlowAppCount: "plus de rendez-vous)",
		AppointmentIndicator: "Cliquez pour plus de rendez-vous",
		WrongPattern: "La périodicité est pas valable",
		CreateError: "La durée de la nomination doit être plus courte que la fréquence à laquelle il se produit. Raccourcir la durée, ou de modifier le modèle de récurrence dans la boîte de dialogue Récurrence de rendez.",
		DragResizeError: "Impossible de replanifier une occurrence du rendez-vous périodique si elle saute sur une occurrence ultérieure du même rendez-vous.",
		StartEndError: "L'heure de fin doit être supérieure à l'heure de début",
		MouseOverDeleteTitle: "supprimer un rendez",
		DeleteConfirmation: "Êtes-vous sûr de vouloir supprimer ce rendez-vous?",
		Time: "Temps",
		EmptyResultText: "Pas de suggestions",
		BlockIntervalAlertTitle: "Alerte",
		BlockIntervalError: "L'intervalle de temps choisi a été bloqué et est indisponible pour la sélection.",
		RecurrenceDateValidation: "Certains mois ont moins de dates sélectionnées. Pour ces mois, l'occurrence tombera à la dernière date du mois",
		SeriesChangeAlert: "Les modifications apportées aux instances spécifiques de cette série seront annulées et ces rendez-vous seront identiques à la série"
	};
	ej.Schedule.Locale["vi-VN"] = {
		ReminderWindowTitle: "cửa sổ nhắc nhở",
		CreateAppointmentTitle: "tạo Bổ nhiệm",
		RecurrenceEditTitle: "Sửa Lặp lại hẹn",
		RecurrenceEditMessage: "Làm thế nào bạn muốn thay đổi cuộc hẹn trong chuỗi?",
		RecurrenceEditOnly: "Chỉ có cuộc hẹn này",
		RecurrenceEditSeries: "toàn bộ loạt",
		PreviousAppointment: "Bổ nhiệm trước",
		NextAppointment: "Bổ nhiệm kế tiếp",
		AppointmentSubject: "Môn học",
		StartTime: "Thời gian bắt đầu",
		EndTime: "Thời gian kết thúc",
		AllDay: "Cả ngày",
		StartTimeZone: "Khu Thời gian bắt đầu",
		EndTimeZone: "Time Zone End",
		Today: "Hôm nay",
		Recurrence: "lặp lại",
		Done: "Làm xong",
		Cancel: "hủy bỏ",
		Ok: "Được",
		RepeatBy: "lặp lại bởi",
		RepeatEvery: "lặp lại mỗi",
		RepeatOn: "lặp lại",
		StartsOn: "bắt đầu vào",
		Ends: "Kết thúc",
		Summary: "Tóm lược",
		Daily: "hằng ngày",
		Weekly: "hàng tuần",
		Monthly: "hằng tháng",
		Yearly: "hàng năm",
		Every: "tất cả",
		EveryWeekDay: "mỗi ngày trong tuần",
		Never: "Không bao giờ",
		After: "Sau",
		Occurence: "Sự xuất hiện (s)",
		On: "Trên",
		Edit: "Chỉnh sửa",
		RecurrenceDay: "Day (s)",
		RecurrenceWeek: "Tuần (s)",
		RecurrenceMonth: "Tháng (s)",
		RecurrenceYear: "Năm (s)",
		The: "Các",
		OfEvery: "của mỗi",
		First: "Đầu tiên",
		Second: "Thứ hai",
		Third: "thứ ba",
		Fourth: "thứ tư",
		Last: "Cuối cùng",
		WeekDay: "Weekday",
		WeekEndDay: "Cuối tuần ngày",
		Subject: "Môn học",
		Categorize: "Thể loại",
		DueIn: "do Trong",
		DismissAll: "Giải tán hết đi",
		Dismiss: "Bỏ qua",
		OpenItem: "mở hàng",
		Snooze: "giấc ngũ ngắn",
		Day: "ngày",
		Week: "Tuần",
		WorkWeek: "Tuần làm việc",
		Month: "tháng",
		AddEvent: "Thêm sự kiện",
		CustomView: "custom View",
		Agenda: "chương trình nghị sự",
		Detailed: "chỉnh sửa bổ nhiệm",
		EventBeginsin: "Bổ nhiệm Begins trong",
		Editevent: "chỉnh sửa bổ nhiệm",
		Editseries: "chỉnh sửa Chuỗi",
		Times: "thời gian",
		Until: "cho đến khi",
		Eventwas: "được bổ nhiệm",
		Hours: "giờ",
		Minutes: "phút",
		Overdue: "Bổ nhiệm quá hạn",
		Days: "day (s)",
		Event: "Biến cố",
		Select: "lựa chọn",
		Previous: "trước",
		Next: "kế tiếp",
		Close: "gần",
		Delete: "Xóa bỏ",
		Date: "Ngày",
		Showin: "Hiện tại",
		Gotodate: "Tới Đến ngày",
		Resources: "TÀI NGUYÊN",
		RecurrenceDeleteTitle: "Xóa Lặp lại hẹn",
		Location: "Vị trí",
		Priority: "quyền ưu tiên",
		RecurrenceAlert: "Báo động",
		NoTitle: "Không tiêu đề",
		OverFlowAppCount: "nhiều cuộc hẹn)",
		WrongPattern: "Các mô hình tái phát là không hợp lệ",
		CreateError: "Thời hạn bổ nhiệm phải được ngắn hơn thường xuyên như thế nào nó xảy ra. Rút ngắn thời gian, hoặc thay đổi mô hình tái phát trong Appointment Recurrence hộp thoại.",
		DragResizeError: "Không thể sắp xếp lại một sự xuất hiện của các cuộc hẹn định kỳ nếu nó bỏ qua một sự xuất hiện sau này của việc bổ nhiệm cùng.",
		StartEndError: "thời gian kết thúc phải lớn hơn thời gian bắt đầu",
		MouseOverDeleteTitle: "xóa hẹn",
		DeleteConfirmation: "Bạn có chắc chắn muốn xóa cuộc hẹn này?",
		Time: "Thời gian",
		EmptyResultText: "Chưa có đề xuất",
		BlockIntervalAlertTitle: "Cảnh báo",
		BlockIntervalError: "Khoảng thời gian đã chọn đã bị chặn và không khả dụng cho lựa chọn",
		RecurrenceDateValidation: "Một số tháng có ít hơn ngày được chọn. Trong những tháng này, sự xuất hiện sẽ rơi vào ngày cuối cùng của tháng",
		SeriesChangeAlert: "Những thay đổi được thực hiện cho các phiên bản cụ thể của loạt bài này sẽ bị hủy bỏ và các cuộc hẹn đó sẽ kết hợp lại loạt bài"
	};
	function onScheduleLocaleChange(args) {
		$("#localeSchedule").ejSchedule({
			locale : args.value
		});
	}
</script>
<style>
.cols-sample-area {
	width: 90%;
	display: block;
}
</style>