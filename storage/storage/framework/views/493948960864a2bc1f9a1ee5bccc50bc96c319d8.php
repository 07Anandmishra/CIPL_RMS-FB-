<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header,
        .footer {
            text-align: center;
            padding: 10px 0;
            background-color: #f4f4f4;
        }

        .header a,
        .footer {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 14px;
            margin: 10px 0;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <a href="<?php echo e($details['url']); ?>"><?php echo e(config('app.name')); ?></a>
        </div>

        <h1><?php echo e($details['title']); ?></h1>
        
        <p>You have been identified to verify the salary of <strong><?php echo e($job->full_name); ?></strong>, who has been interviewed on <?php echo e(\Carbon\Carbon::parse($job->schedule_date)->format('d-m-Y')); ?> at <?php echo e(\Carbon\Carbon::parse($job->schedule_date)->format('h:i A')); ?>.</p>

        <a href="<?php echo e($details['url']); ?>" class="button">Click Here</a>
        
        <p>Thank You!</p>

        <p>Regards,<br>Corporate Infotech Pvt. Ltd.</p>

        <div class="footer">
            <?php echo e(config('app.name')); ?>

        </div>
    </div>
</body>
</html>
<?php /**PATH D:\RMS\RMSAPI\resources\views/emails/salaryverifyMail.blade.php ENDPATH**/ ?>