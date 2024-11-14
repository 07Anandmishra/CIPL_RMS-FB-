<!-- resources/views/emails/interview_scheduled.blade.php -->
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

        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
    </style>
    <title>Interview Scheduled </title>
</head>
<body>
    <div class="container">
    <p>Dear <?php echo e($candidate->Name); ?>, or Interviewer <?php echo e($interviewer); ?></p>

    <p>We are pleased to schedule the <?php echo e($IvStatus); ?> for the position of <?php echo e($position); ?>.</p>

    <p>Details:</p>
    <ul>
        <li><strong>Candidate:</strong> <?php echo e($candidate->Name); ?></li>
        <li><strong>Interviewer:</strong> <?php echo e($interviewer); ?></li>
        <li><strong>Date:</strong> <?php echo e($date); ?></li>
        <li><strong>Time:</strong> <?php echo e($time); ?></li>
        <li><strong>Mode:</strong> <?php echo e($mode); ?></li>
    </ul>

    <p>Please confirm your availability.</break> The Meeting Link is <a href="<?php echo e($meetingUrl); ?>"><?php echo e($meetingUrl); ?></a></p>

    <p>Best Regards,</p>

    <div class="disclaimer">
        <p  class="disclaimer">Disclaimer:</p>
        <p class="disclaimer" >This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
        <p class="disclaimer">For any concerns, please reach out to us at ta@cipl.org.in.</p>
    </div>
    </div>
</body>
</html>
<?php /**PATH D:\RMS\RMSAPI\resources\views/emails/interview_scheduled.blade.php ENDPATH**/ ?>