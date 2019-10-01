</div>
    <!-- /#wrapper -->
    <script src="js/dropzone.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
 
		
  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    Morris Charts JavaScript
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['View',     <?php echo $session->count; ?>],
          ['Comments', <?php echo Comment::count_all(); ?>],
          ['Users',    <?php echo User::count_all();?>],
          ['Photos',   <?php echo Photo::count_all(); ?>],
          
     
        ]);

        var options = {
          legend:'none',
          pieSliceText: 'label',
          backgroundColor:'transparent',
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>


</body>

</html>
